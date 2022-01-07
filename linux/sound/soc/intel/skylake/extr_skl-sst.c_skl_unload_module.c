
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sst_dsp {int dev; struct skl_dev* thread_context; } ;
struct skl_dev {int ipc; } ;


 int EIO ;
 int SKL_NUM_MODULES ;
 int dev_err (int ,char*,...) ;
 int skl_get_module (struct sst_dsp*,int ) ;
 int skl_ipc_unload_modules (int *,int ,int *) ;
 int skl_put_module (struct sst_dsp*,int ) ;

__attribute__((used)) static int skl_unload_module(struct sst_dsp *ctx, u16 mod_id)
{
 int usage_cnt;
 struct skl_dev *skl = ctx->thread_context;
 int ret = 0;

 usage_cnt = skl_put_module(ctx, mod_id);
 if (usage_cnt < 0) {
  dev_err(ctx->dev, "Module bad usage cnt!:%d\n", usage_cnt);
  return -EIO;
 }


 if (usage_cnt > 0)
  return 0;

 ret = skl_ipc_unload_modules(&skl->ipc,
   SKL_NUM_MODULES, &mod_id);
 if (ret < 0) {
  dev_err(ctx->dev, "Failed to UnLoad module\n");
  skl_get_module(ctx, mod_id);
  return ret;
 }

 return ret;
}
