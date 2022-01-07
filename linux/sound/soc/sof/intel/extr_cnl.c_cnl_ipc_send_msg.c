
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_ipc_msg {int msg_size; int msg_data; } ;
struct TYPE_2__ {int offset; } ;
struct snd_sof_dev {TYPE_1__ host_box; } ;


 int CNL_DSP_REG_HIPCIDR ;
 int CNL_DSP_REG_HIPCIDR_BUSY ;
 int HDA_DSP_BAR ;
 int snd_sof_dsp_write (struct snd_sof_dev*,int ,int ,int ) ;
 int sof_mailbox_write (struct snd_sof_dev*,int ,int ,int ) ;

__attribute__((used)) static int cnl_ipc_send_msg(struct snd_sof_dev *sdev,
       struct snd_sof_ipc_msg *msg)
{

 sof_mailbox_write(sdev, sdev->host_box.offset, msg->msg_data,
     msg->msg_size);
 snd_sof_dsp_write(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCIDR,
     CNL_DSP_REG_HIPCIDR_BUSY);

 return 0;
}
