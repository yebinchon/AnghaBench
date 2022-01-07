
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int max_streams; } ;
struct intel_sst_drv {int dev; TYPE_2__* streams; TYPE_1__ info; } ;
struct TYPE_4__ {scalar_t__ pipe_id; } ;


 int dev_dbg (int ,char*,scalar_t__) ;

int get_stream_id_mrfld(struct intel_sst_drv *sst_drv_ctx,
  u32 pipe_id)
{
 int i;

 for (i = 1; i <= sst_drv_ctx->info.max_streams; i++)
  if (pipe_id == sst_drv_ctx->streams[i].pipe_id)
   return i;

 dev_dbg(sst_drv_ctx->dev, "no such pipe_id(%u)", pipe_id);
 return -1;
}
