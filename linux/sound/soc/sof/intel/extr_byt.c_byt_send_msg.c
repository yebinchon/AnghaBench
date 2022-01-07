
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_ipc_msg {int msg_size; int msg_data; } ;
struct TYPE_2__ {int offset; } ;
struct snd_sof_dev {TYPE_1__ host_box; } ;


 int BYT_DSP_BAR ;
 int SHIM_BYT_IPCX_BUSY ;
 int SHIM_IPCX ;
 int snd_sof_dsp_write64 (struct snd_sof_dev*,int ,int ,int ) ;
 int sof_mailbox_write (struct snd_sof_dev*,int ,int ,int ) ;

__attribute__((used)) static int byt_send_msg(struct snd_sof_dev *sdev, struct snd_sof_ipc_msg *msg)
{

 sof_mailbox_write(sdev, sdev->host_box.offset, msg->msg_data,
     msg->msg_size);
 snd_sof_dsp_write64(sdev, BYT_DSP_BAR, SHIM_IPCX, SHIM_BYT_IPCX_BUSY);

 return 0;
}
