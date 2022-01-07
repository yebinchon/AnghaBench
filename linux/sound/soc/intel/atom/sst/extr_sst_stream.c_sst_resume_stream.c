
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_info {scalar_t__ status; scalar_t__ resume_status; scalar_t__ resume_prev; scalar_t__ prev; int pipe_id; int task_id; } ;
struct intel_sst_drv {int dev; int sst_lock; } ;


 int EBADRQC ;
 int EINVAL ;
 int IPC_CMD ;
 int IPC_IA_RESUME_STREAM_MRFLD ;
 int SST_ERR_INVALID_STREAM_ID ;
 scalar_t__ STREAM_INIT ;
 scalar_t__ STREAM_PAUSED ;
 scalar_t__ STREAM_RUNNING ;
 void* STREAM_UN_INIT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst_clean_stream (struct stream_info*) ;
 int sst_prepare_and_post_msg (struct intel_sst_drv*,int ,int ,int ,int ,int ,int *,int *,int,int,int,int) ;
 int sst_start_stream (struct intel_sst_drv*,int) ;

int sst_resume_stream(struct intel_sst_drv *sst_drv_ctx, int str_id)
{
 int retval = 0;
 struct stream_info *str_info;

 dev_dbg(sst_drv_ctx->dev, "SST DBG:sst_resume_stream for %d\n", str_id);
 str_info = get_stream_info(sst_drv_ctx, str_id);
 if (!str_info)
  return -EINVAL;
 if (str_info->status == STREAM_RUNNING)
  return 0;

 if (str_info->resume_status == STREAM_PAUSED &&
     str_info->resume_prev == STREAM_RUNNING) {




  dev_dbg(sst_drv_ctx->dev, "restart recreated stream after resume\n");
  str_info->status = STREAM_RUNNING;
  str_info->prev = STREAM_PAUSED;
  retval = sst_start_stream(sst_drv_ctx, str_id);
  str_info->resume_status = STREAM_UN_INIT;
 } else if (str_info->resume_status == STREAM_PAUSED &&
     str_info->resume_prev == STREAM_INIT) {




  dev_dbg(sst_drv_ctx->dev, "leaving recreated stream idle after resume\n");
  str_info->status = STREAM_INIT;
  str_info->prev = STREAM_PAUSED;
  str_info->resume_status = STREAM_UN_INIT;
 } else if (str_info->status == STREAM_PAUSED) {
  retval = sst_prepare_and_post_msg(sst_drv_ctx, str_info->task_id,
    IPC_CMD, IPC_IA_RESUME_STREAM_MRFLD,
    str_info->pipe_id, 0, ((void*)0), ((void*)0),
    1, 1, 0, 1);

  if (!retval) {
   if (str_info->prev == STREAM_RUNNING)
    str_info->status = STREAM_RUNNING;
   else
    str_info->status = STREAM_INIT;
   str_info->prev = STREAM_PAUSED;
  } else if (retval == -SST_ERR_INVALID_STREAM_ID) {
   retval = -EINVAL;
   mutex_lock(&sst_drv_ctx->sst_lock);
   sst_clean_stream(str_info);
   mutex_unlock(&sst_drv_ctx->sst_lock);
  }
 } else {
  retval = -EBADRQC;
  dev_err(sst_drv_ctx->dev, "SST ERR: BADQRC for stream\n");
 }

 return retval;
}
