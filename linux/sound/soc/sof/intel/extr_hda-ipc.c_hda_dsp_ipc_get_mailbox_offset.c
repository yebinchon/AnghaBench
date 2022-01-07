
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int HDA_DSP_MBOX_UPLINK_OFFSET ;

int hda_dsp_ipc_get_mailbox_offset(struct snd_sof_dev *sdev)
{
 return HDA_DSP_MBOX_UPLINK_OFFSET;
}
