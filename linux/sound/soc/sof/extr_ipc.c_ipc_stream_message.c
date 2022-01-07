
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; } ;


 int SOF_CMD_TYPE_MASK ;
 int SOF_IPC_MESSAGE_ID (int) ;


 int dev_err (int ,char*,int) ;
 int ipc_period_elapsed (struct snd_sof_dev*,int) ;
 int ipc_xrun (struct snd_sof_dev*,int) ;

__attribute__((used)) static void ipc_stream_message(struct snd_sof_dev *sdev, u32 msg_cmd)
{

 u32 msg_type = msg_cmd & SOF_CMD_TYPE_MASK;
 u32 msg_id = SOF_IPC_MESSAGE_ID(msg_cmd);

 switch (msg_type) {
 case 129:
  ipc_period_elapsed(sdev, msg_id);
  break;
 case 128:
  ipc_xrun(sdev, msg_id);
  break;
 default:
  dev_err(sdev->dev, "error: unhandled stream message %x\n",
   msg_id);
  break;
 }
}
