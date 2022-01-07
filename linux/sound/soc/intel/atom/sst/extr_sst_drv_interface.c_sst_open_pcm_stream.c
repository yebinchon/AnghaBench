
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sst_params {int dummy; } ;
struct intel_sst_drv {int dev; int stream_cnt; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*,int) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int sst_get_stream (struct intel_sst_drv*,struct snd_sst_params*) ;

__attribute__((used)) static int sst_open_pcm_stream(struct device *dev,
  struct snd_sst_params *str_param)
{
 int retval;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 if (!str_param)
  return -EINVAL;

 retval = sst_get_stream(ctx, str_param);
 if (retval > 0)
  ctx->stream_cnt++;
 else
  dev_err(ctx->dev, "sst_get_stream returned err %d\n", retval);

 return retval;
}
