
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int drain_cb_param; int drain_notify; int compr_cb_param; int compr_cb; } ;
struct sst_compress_cb {int drain_cb_param; int drain_notify; int param; int compr_cb; } ;
struct snd_sst_params {int dummy; } ;
struct intel_sst_drv {struct stream_info* streams; int dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int sst_get_stream (struct intel_sst_drv*,struct snd_sst_params*) ;
 int sst_pm_runtime_put (struct intel_sst_drv*) ;

__attribute__((used)) static int sst_cdev_open(struct device *dev,
  struct snd_sst_params *str_params, struct sst_compress_cb *cb)
{
 int str_id, retval;
 struct stream_info *stream;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 retval = pm_runtime_get_sync(ctx->dev);
 if (retval < 0) {
  pm_runtime_put_sync(ctx->dev);
  return retval;
 }

 str_id = sst_get_stream(ctx, str_params);
 if (str_id > 0) {
  dev_dbg(dev, "stream allocated in sst_cdev_open %d\n", str_id);
  stream = &ctx->streams[str_id];
  stream->compr_cb = cb->compr_cb;
  stream->compr_cb_param = cb->param;
  stream->drain_notify = cb->drain_notify;
  stream->drain_cb_param = cb->drain_cb_param;
 } else {
  dev_err(dev, "stream encountered error during alloc %d\n", str_id);
  str_id = -EINVAL;
  sst_pm_runtime_put(ctx);
 }
 return str_id;
}
