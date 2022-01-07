
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_dma_trace_posn {scalar_t__ host_offset; scalar_t__ overflow; int messages; } ;
struct snd_sof_dev {scalar_t__ host_offset; int dev; int trace_sleep; scalar_t__ dtrace_is_enabled; } ;


 int dev_err (int ,char*,scalar_t__,int ) ;
 int wake_up (int *) ;

int snd_sof_trace_update_pos(struct snd_sof_dev *sdev,
        struct sof_ipc_dma_trace_posn *posn)
{
 if (sdev->dtrace_is_enabled && sdev->host_offset != posn->host_offset) {
  sdev->host_offset = posn->host_offset;
  wake_up(&sdev->trace_sleep);
 }

 if (posn->overflow != 0)
  dev_err(sdev->dev,
   "error: DSP trace buffer overflow %u bytes. Total messages %d\n",
   posn->overflow, posn->messages);

 return 0;
}
