
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_cmd_hdr {int cmd; int size; } ;
struct snd_sof_ipc_msg {int reply_error; int reply_size; int reply_data; int ipc_complete; int waitq; struct sof_ipc_cmd_hdr* msg_data; } ;
struct snd_sof_ipc {struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int dev; int ipc_timeout; } ;


 int ETIMEDOUT ;
 int SOF_DBG_MBOX ;
 int SOF_DBG_REGS ;
 int dev_err (int ,char*,int ,int ) ;
 int ipc_log_header (int ,char*,int ) ;
 int memcpy (void*,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int snd_sof_dsp_dbg_dump (struct snd_sof_dev*,int) ;
 int snd_sof_ipc_dump (struct snd_sof_dev*) ;
 int snd_sof_trace_notify_for_error (struct snd_sof_dev*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int tx_wait_done(struct snd_sof_ipc *ipc, struct snd_sof_ipc_msg *msg,
   void *reply_data)
{
 struct snd_sof_dev *sdev = ipc->sdev;
 struct sof_ipc_cmd_hdr *hdr = msg->msg_data;
 int ret;


 ret = wait_event_timeout(msg->waitq, msg->ipc_complete,
     msecs_to_jiffies(sdev->ipc_timeout));

 if (ret == 0) {
  dev_err(sdev->dev, "error: ipc timed out for 0x%x size %d\n",
   hdr->cmd, hdr->size);
  snd_sof_dsp_dbg_dump(ipc->sdev, SOF_DBG_REGS | SOF_DBG_MBOX);
  snd_sof_ipc_dump(ipc->sdev);
  snd_sof_trace_notify_for_error(ipc->sdev);
  ret = -ETIMEDOUT;
 } else {

  ret = msg->reply_error;
  if (msg->reply_size)
   memcpy(reply_data, msg->reply_data, msg->reply_size);
  if (ret < 0)
   dev_err(sdev->dev, "error: ipc error for 0x%x size %zu\n",
    hdr->cmd, msg->reply_size);
  else
   ipc_log_header(sdev->dev, "ipc tx succeeded", hdr->cmd);
 }

 return ret;
}
