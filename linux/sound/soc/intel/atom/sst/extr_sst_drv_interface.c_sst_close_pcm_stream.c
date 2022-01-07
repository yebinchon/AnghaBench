
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int * period_elapsed; int status; int * pcm_substream; } ;
struct intel_sst_drv {int dev; int stream_cnt; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int STREAM_UN_INIT ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 struct intel_sst_drv* dev_get_drvdata (struct device*) ;
 int free_stream_context (struct intel_sst_drv*,unsigned int) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,unsigned int) ;

__attribute__((used)) static int sst_close_pcm_stream(struct device *dev, unsigned int str_id)
{
 struct stream_info *stream;
 int retval = 0;
 struct intel_sst_drv *ctx = dev_get_drvdata(dev);

 stream = get_stream_info(ctx, str_id);
 if (!stream) {
  dev_err(ctx->dev, "stream info is NULL for str %d!!!\n", str_id);
  return -EINVAL;
 }

 retval = free_stream_context(ctx, str_id);
 stream->pcm_substream = ((void*)0);
 stream->status = STREAM_UN_INIT;
 stream->period_elapsed = ((void*)0);
 ctx->stream_cnt--;

 if (retval)
  dev_err(ctx->dev, "free stream returned err %d\n", retval);

 dev_dbg(ctx->dev, "Exit\n");
 return 0;
}
