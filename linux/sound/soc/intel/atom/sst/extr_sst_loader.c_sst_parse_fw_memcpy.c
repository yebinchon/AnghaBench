
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct list_head {int dummy; } ;
struct intel_sst_drv {int dummy; } ;
struct fw_module_header {int mod_size; } ;


 int sst_parse_module_memcpy (struct intel_sst_drv*,struct fw_module_header*,struct list_head*) ;
 int sst_validate_fw_image (struct intel_sst_drv*,unsigned long,struct fw_module_header**,scalar_t__*) ;

__attribute__((used)) static int sst_parse_fw_memcpy(struct intel_sst_drv *ctx, unsigned long size,
    struct list_head *fw_list)
{
 struct fw_module_header *module;
 u32 count, num_modules;
 int ret_val;

 ret_val = sst_validate_fw_image(ctx, size, &module, &num_modules);
 if (ret_val)
  return ret_val;

 for (count = 0; count < num_modules; count++) {
  ret_val = sst_parse_module_memcpy(ctx, module, fw_list);
  if (ret_val)
   return ret_val;
  module = (void *)module + sizeof(*module) + module->mod_size;
 }

 return 0;
}
