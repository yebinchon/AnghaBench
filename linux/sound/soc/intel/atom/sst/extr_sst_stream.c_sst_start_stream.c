
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct stream_info {scalar_t__ status; int pipe_id; int task_id; } ;
struct intel_sst_drv {int dev; } ;


 int EBADRQC ;
 int EINVAL ;
 int IPC_CMD ;
 int IPC_IA_START_STREAM_MRFLD ;
 scalar_t__ STREAM_RUNNING ;
 int dev_dbg (int ,char*,int) ;
 struct stream_info* get_stream_info (struct intel_sst_drv*,int) ;
 int sst_prepare_and_post_msg (struct intel_sst_drv*,int ,int ,int ,int ,int,int *,int *,int,int,int,int) ;

int sst_start_stream(struct intel_sst_drv *sst_drv_ctx, int str_id)
{
 int retval = 0;
 struct stream_info *str_info;
 u16 data = 0;

 dev_dbg(sst_drv_ctx->dev, "sst_start_stream for %d\n", str_id);
 str_info = get_stream_info(sst_drv_ctx, str_id);
 if (!str_info)
  return -EINVAL;
 if (str_info->status != STREAM_RUNNING)
  return -EBADRQC;

 retval = sst_prepare_and_post_msg(sst_drv_ctx, str_info->task_id,
   IPC_CMD, IPC_IA_START_STREAM_MRFLD, str_info->pipe_id,
   sizeof(u16), &data, ((void*)0), 1, 1, 1, 0);

 return retval;
}
