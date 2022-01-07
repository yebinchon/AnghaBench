
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sst_bytes_v2 {int dummy; } ;
struct intel_sst_drv {int dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int sst_pm_runtime_put (struct intel_sst_drv*) ;
 int sst_send_byte_stream_mrfld (struct intel_sst_drv*,struct snd_sst_bytes_v2*) ;

__attribute__((used)) static int sst_send_byte_stream(struct device *dev,
  struct snd_sst_bytes_v2 *bytes)
{
 int ret_val = 0;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 if (((void*)0) == bytes)
  return -EINVAL;
 ret_val = pm_runtime_get_sync(ctx->dev);
 if (ret_val < 0) {
  pm_runtime_put_sync(ctx->dev);
  return ret_val;
 }

 ret_val = sst_send_byte_stream_mrfld(ctx, bytes);
 sst_pm_runtime_put(ctx);

 return ret_val;
}
