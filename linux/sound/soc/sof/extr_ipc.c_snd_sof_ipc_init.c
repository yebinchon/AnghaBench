
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_ipc_msg {int ipc_complete; int waitq; void* reply_data; void* msg_data; } ;
struct snd_sof_ipc {struct snd_sof_ipc_msg msg; struct snd_sof_dev* sdev; int tx_mutex; } ;
struct snd_sof_dev {int dev; } ;
struct TYPE_2__ {int fw_ready; } ;


 int GFP_KERNEL ;
 int SOF_IPC_MSG_MAX_SIZE ;
 int dev_err (int ,char*) ;
 void* devm_kzalloc (int ,int,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 TYPE_1__* sof_ops (struct snd_sof_dev*) ;

struct snd_sof_ipc *snd_sof_ipc_init(struct snd_sof_dev *sdev)
{
 struct snd_sof_ipc *ipc;
 struct snd_sof_ipc_msg *msg;


 if (!sof_ops(sdev)->fw_ready) {
  dev_err(sdev->dev, "error: ipc mandatory ops not defined\n");
  return ((void*)0);
 }

 ipc = devm_kzalloc(sdev->dev, sizeof(*ipc), GFP_KERNEL);
 if (!ipc)
  return ((void*)0);

 mutex_init(&ipc->tx_mutex);
 ipc->sdev = sdev;
 msg = &ipc->msg;


 msg->ipc_complete = 1;


 msg->msg_data = devm_kzalloc(sdev->dev, SOF_IPC_MSG_MAX_SIZE,
         GFP_KERNEL);
 if (!msg->msg_data)
  return ((void*)0);

 msg->reply_data = devm_kzalloc(sdev->dev, SOF_IPC_MSG_MAX_SIZE,
           GFP_KERNEL);
 if (!msg->reply_data)
  return ((void*)0);

 init_waitqueue_head(&msg->waitq);

 return ipc;
}
