
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {scalar_t__ sst_state; int sst_lock; int dev; int * fw_in_mem; } ;
struct firmware {int dummy; } ;


 scalar_t__ SST_RESET ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int sst_cache_and_parse_fw (struct intel_sst_drv*,struct firmware const*) ;

void sst_firmware_load_cb(const struct firmware *fw, void *context)
{
 struct intel_sst_drv *ctx = context;

 dev_dbg(ctx->dev, "Enter\n");

 if (fw == ((void*)0)) {
  dev_err(ctx->dev, "request fw failed\n");
  return;
 }

 mutex_lock(&ctx->sst_lock);

 if (ctx->sst_state != SST_RESET ||
   ctx->fw_in_mem != ((void*)0)) {
  release_firmware(fw);
  mutex_unlock(&ctx->sst_lock);
  return;
 }

 dev_dbg(ctx->dev, "Request Fw completed\n");
 sst_cache_and_parse_fw(ctx, fw);
 mutex_unlock(&ctx->sst_lock);
}
