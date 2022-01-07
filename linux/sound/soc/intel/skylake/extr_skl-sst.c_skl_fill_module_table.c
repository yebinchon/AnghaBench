
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {int module_list; int dev; } ;
struct skl_module_table {int list; TYPE_1__* mod_info; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int mod_id; struct firmware const* fw; } ;


 int GFP_KERNEL ;
 int dev_err (int ,char*,char*,int) ;
 void* devm_kzalloc (int ,unsigned int,int ) ;
 int list_add (int *,int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int ) ;

__attribute__((used)) static struct skl_module_table *skl_fill_module_table(struct sst_dsp *ctx,
      char *mod_name, int mod_id)
{
 const struct firmware *fw;
 struct skl_module_table *skl_module;
 unsigned int size;
 int ret;

 ret = request_firmware(&fw, mod_name, ctx->dev);
 if (ret < 0) {
  dev_err(ctx->dev, "Request Module %s failed :%d\n",
       mod_name, ret);
  return ((void*)0);
 }

 skl_module = devm_kzalloc(ctx->dev, sizeof(*skl_module), GFP_KERNEL);
 if (skl_module == ((void*)0)) {
  release_firmware(fw);
  return ((void*)0);
 }

 size = sizeof(*skl_module->mod_info);
 skl_module->mod_info = devm_kzalloc(ctx->dev, size, GFP_KERNEL);
 if (skl_module->mod_info == ((void*)0)) {
  release_firmware(fw);
  return ((void*)0);
 }

 skl_module->mod_info->mod_id = mod_id;
 skl_module->mod_info->fw = fw;
 list_add(&skl_module->list, &ctx->module_list);

 return skl_module;
}
