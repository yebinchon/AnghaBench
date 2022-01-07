
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {int status; int prev; int pipe_id; int task_id; scalar_t__ cumm_bytes; } ;
struct intel_sst_drv {int dev; } ;


 int EBADRQC ;
 int EINVAL ;
 int IPC_CMD ;
 int IPC_IA_DROP_STREAM_MRFLD ;
 int STREAM_INIT ;
 int STREAM_UN_INIT ;
 int dev_dbg (int ,char*,int) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,int) ;
 int sst_prepare_and_post_msg (struct intel_sst_drv*,int ,int ,int ,int ,int ,int *,int *,int,int,int,int) ;

int sst_drop_stream(struct intel_sst_drv *sst_drv_ctx, int str_id)
{
 int retval = 0;
 struct stream_info *str_info;

 dev_dbg(sst_drv_ctx->dev, "SST DBG:sst_drop_stream for %d\n", str_id);
 str_info = get_stream_info(sst_drv_ctx, str_id);
 if (!str_info)
  return -EINVAL;

 if (str_info->status != STREAM_UN_INIT) {
  str_info->prev = STREAM_UN_INIT;
  str_info->status = STREAM_INIT;
  str_info->cumm_bytes = 0;
  retval = sst_prepare_and_post_msg(sst_drv_ctx, str_info->task_id,
    IPC_CMD, IPC_IA_DROP_STREAM_MRFLD,
    str_info->pipe_id, 0, ((void*)0), ((void*)0),
    1, 1, 1, 0);
 } else {
  retval = -EBADRQC;
  dev_dbg(sst_drv_ctx->dev, "BADQRC for stream, state %x\n",
    str_info->status);
 }
 return retval;
}
