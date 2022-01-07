
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_ipc_msg {int ipc_complete; int waitq; } ;
struct snd_sof_dev {int dev; TYPE_1__* ipc; } ;
struct TYPE_2__ {struct snd_sof_ipc_msg msg; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 int wake_up (int *) ;

int snd_sof_ipc_reply(struct snd_sof_dev *sdev, u32 msg_id)
{
 struct snd_sof_ipc_msg *msg = &sdev->ipc->msg;

 if (msg->ipc_complete) {
  dev_err(sdev->dev, "error: no reply expected, received 0x%x",
   msg_id);
  return -EINVAL;
 }


 msg->ipc_complete = 1;
 wake_up(&msg->waitq);

 return 0;
}
