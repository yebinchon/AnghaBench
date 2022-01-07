
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sof_ipc_dma_trace_posn {int dummy; } ;
struct snd_sof_dev {int dev; } ;
typedef int posn ;



 int dev_err (int ,char*,int) ;
 int snd_sof_ipc_msg_data (struct snd_sof_dev*,int *,struct sof_ipc_dma_trace_posn*,int) ;
 int snd_sof_trace_update_pos (struct snd_sof_dev*,struct sof_ipc_dma_trace_posn*) ;

__attribute__((used)) static void ipc_trace_message(struct snd_sof_dev *sdev, u32 msg_id)
{
 struct sof_ipc_dma_trace_posn posn;

 switch (msg_id) {
 case 128:

  snd_sof_ipc_msg_data(sdev, ((void*)0), &posn, sizeof(posn));
  snd_sof_trace_update_pos(sdev, &posn);
  break;
 default:
  dev_err(sdev->dev, "error: unhandled trace message %x\n",
   msg_id);
  break;
 }
}
