
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sst_dsp {int dev; } ;
struct skl_module_table {TYPE_2__* mod_info; int usage_cnt; } ;
typedef int mod_name ;
struct TYPE_4__ {TYPE_1__* fw; } ;
struct TYPE_3__ {int size; int data; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 struct skl_module_table* skl_fill_module_table (struct sst_dsp*,char*,int ) ;
 int skl_get_module (struct sst_dsp*,int ) ;
 struct skl_module_table* skl_module_get_from_id (struct sst_dsp*,int ) ;
 int skl_transfer_module (struct sst_dsp*,int ,int ,int ,int ,int) ;
 int snprintf (char*,int,char*,int *) ;

__attribute__((used)) static int skl_load_module(struct sst_dsp *ctx, u16 mod_id, u8 *guid)
{
 struct skl_module_table *module_entry = ((void*)0);
 int ret = 0;
 char mod_name[64];

 snprintf(mod_name, sizeof(mod_name), "intel/dsp_fw_%pUL.bin", guid);

 module_entry = skl_module_get_from_id(ctx, mod_id);
 if (module_entry == ((void*)0)) {
  module_entry = skl_fill_module_table(ctx, mod_name, mod_id);
  if (module_entry == ((void*)0)) {
   dev_err(ctx->dev, "Failed to Load module\n");
   return -EINVAL;
  }
 }

 if (!module_entry->usage_cnt) {
  ret = skl_transfer_module(ctx, module_entry->mod_info->fw->data,
    module_entry->mod_info->fw->size,
    mod_id, 0, 1);
  if (ret < 0) {
   dev_err(ctx->dev, "Failed to Load module\n");
   return ret;
  }
 }

 ret = skl_get_module(ctx, mod_id);

 return ret;
}
