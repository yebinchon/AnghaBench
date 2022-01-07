
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int dummy; } ;
struct intel_sst_drv {int dev; int * streams; } ;


 int dev_err (int ,char*,unsigned int) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,unsigned int) ;
 int sst_clean_stream (int *) ;
 int sst_free_stream (struct intel_sst_drv*,unsigned int) ;

int free_stream_context(struct intel_sst_drv *ctx, unsigned int str_id)
{
 struct stream_info *stream;
 int ret = 0;

 stream = get_stream_info(ctx, str_id);
 if (stream) {

  ret = sst_free_stream(ctx, str_id);
  if (ret)
   sst_clean_stream(&ctx->streams[str_id]);
  return ret;
 } else {
  dev_err(ctx->dev, "we tried to free stream context %d which was freed!!!\n", str_id);
 }
 return ret;
}
