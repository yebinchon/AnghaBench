
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int compr_cb_param; int (* compr_cb ) (int ) ;} ;
struct intel_sst_drv {struct stream_info* streams; int dev; } ;


 int dev_dbg (int ,char*,int) ;
 int stub1 (int ) ;

void sst_cdev_fragment_elapsed(struct intel_sst_drv *ctx, int str_id)
{
 struct stream_info *stream;

 dev_dbg(ctx->dev, "fragment elapsed from firmware for str_id %d\n",
   str_id);
 stream = &ctx->streams[str_id];
 if (stream->compr_cb)
  stream->compr_cb(stream->compr_cb_param);
}
