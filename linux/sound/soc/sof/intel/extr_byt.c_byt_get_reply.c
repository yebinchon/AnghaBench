
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
struct sof_ipc_reply {int error; TYPE_1__ hdr; } ;
struct snd_sof_ipc_msg {int reply_size; int reply_error; struct sof_ipc_reply* reply_data; } ;
struct TYPE_4__ {int offset; } ;
struct snd_sof_dev {TYPE_2__ host_box; int dev; struct snd_sof_ipc_msg* msg; } ;
typedef int reply ;


 int EINVAL ;
 int dev_err (int ,char*,int,int) ;
 int dev_warn (int ,char*) ;
 int memcpy (struct sof_ipc_reply*,struct sof_ipc_reply*,int) ;
 int sof_mailbox_read (struct snd_sof_dev*,int ,struct sof_ipc_reply*,int) ;

__attribute__((used)) static void byt_get_reply(struct snd_sof_dev *sdev)
{
 struct snd_sof_ipc_msg *msg = sdev->msg;
 struct sof_ipc_reply reply;
 int ret = 0;






 if (!msg) {
  dev_warn(sdev->dev, "unexpected ipc interrupt raised!\n");
  return;
 }


 sof_mailbox_read(sdev, sdev->host_box.offset, &reply, sizeof(reply));

 if (reply.error < 0) {
  memcpy(msg->reply_data, &reply, sizeof(reply));
  ret = reply.error;
 } else {

  if (reply.hdr.size != msg->reply_size) {
   dev_err(sdev->dev, "error: reply expected %zu got %u bytes\n",
    msg->reply_size, reply.hdr.size);
   ret = -EINVAL;
  }


  if (msg->reply_size > 0)
   sof_mailbox_read(sdev, sdev->host_box.offset,
      msg->reply_data, msg->reply_size);
 }

 msg->reply_error = ret;
}
