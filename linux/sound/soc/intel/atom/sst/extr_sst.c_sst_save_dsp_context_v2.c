
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int dev; } ;


 int EIO ;
 int IPC_CMD ;
 int IPC_PREP_D3 ;
 int PIPE_RSVD ;
 int SST_TASK_ID_MEDIA ;
 int dev_err (int ,char*,int) ;
 int sst_prepare_and_post_msg (struct intel_sst_drv*,int ,int ,int ,int ,int ,int *,int *,int,int,int,int) ;

__attribute__((used)) static int sst_save_dsp_context_v2(struct intel_sst_drv *sst)
{
 int ret = 0;

 ret = sst_prepare_and_post_msg(sst, SST_TASK_ID_MEDIA, IPC_CMD,
   IPC_PREP_D3, PIPE_RSVD, 0, ((void*)0), ((void*)0),
   1, 1, 0, 1);

 if (ret < 0) {
  dev_err(sst->dev, "not suspending FW!!, Err: %d\n", ret);
  return -EIO;
 }

 return 0;
}
