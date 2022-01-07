
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_ipc_msg {size_t msg_size; size_t reply_size; int ipc_complete; int header; int msg_data; scalar_t__ reply_error; } ;
struct snd_sof_ipc {struct snd_sof_ipc_msg msg; scalar_t__ disable_ipc_tx; struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int dev; int ipc_lock; struct snd_sof_ipc_msg* msg; } ;


 int ENODEV ;
 int dev_err_ratelimited (int ,char*,int) ;
 int ipc_log_header (int ,char*,int ) ;
 int memcpy (int ,void*,size_t) ;
 int snd_sof_dsp_send_msg (struct snd_sof_dev*,struct snd_sof_ipc_msg*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tx_wait_done (struct snd_sof_ipc*,struct snd_sof_ipc_msg*,void*) ;

__attribute__((used)) static int sof_ipc_tx_message_unlocked(struct snd_sof_ipc *ipc, u32 header,
           void *msg_data, size_t msg_bytes,
           void *reply_data, size_t reply_bytes)
{
 struct snd_sof_dev *sdev = ipc->sdev;
 struct snd_sof_ipc_msg *msg;
 int ret;

 if (ipc->disable_ipc_tx)
  return -ENODEV;





 spin_lock_irq(&sdev->ipc_lock);


 msg = &ipc->msg;

 msg->header = header;
 msg->msg_size = msg_bytes;
 msg->reply_size = reply_bytes;
 msg->reply_error = 0;


 if (msg_bytes)
  memcpy(msg->msg_data, msg_data, msg_bytes);

 sdev->msg = msg;

 ret = snd_sof_dsp_send_msg(sdev, msg);

 if (!ret)
  msg->ipc_complete = 0;

 spin_unlock_irq(&sdev->ipc_lock);

 if (ret < 0) {

  dev_err_ratelimited(sdev->dev,
        "error: ipc tx failed with error %d\n",
        ret);
  return ret;
 }

 ipc_log_header(sdev->dev, "ipc tx", msg->header);


 if (!ret)
  ret = tx_wait_done(ipc, msg, reply_data);

 return ret;
}
