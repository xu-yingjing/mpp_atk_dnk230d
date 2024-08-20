MPP_USER_CFLGAS = -I$(MPP_SRC_DIR)/include \
		-I$(MPP_SRC_DIR)/include/comm \
		-I$(MPP_SRC_DIR)/include/ioctl \
		-I$(MPP_SRC_DIR)/userapps/api
MPP_LIB_PATH = $(MPP_SRC_DIR)/userapps/lib

MPP_LIBS = $(addprefix -l, $(subst lib, ,$(basename $(notdir $(foreach dir, $(MPP_LIB_PATH), $(wildcard $(dir)/*))))))

MPP_MIDDLEWARE_LIB_INSTALL_PATH = $(MPP_SRC_DIR)/middleware/lib/
MPP_MIDDLEWARE_ELF_INSTALL_PATH = $(MPP_SRC_DIR)/middleware/elf/
