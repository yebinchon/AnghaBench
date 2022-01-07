
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_ipc_msg {int msg_size; int msg_data; } ;
struct TYPE_2__ {int offset; } ;
struct snd_sof_dev {TYPE_1__ host_box; scalar_t__ private; } ;
struct imx8_priv {int dsp_ipc; } ;


 int imx_dsp_ring_doorbell (int ,int ) ;
 int sof_mailbox_write (struct snd_sof_dev*,int ,int ,int ) ;

__attribute__((used)) static int imx8_send_msg(struct snd_sof_dev *sdev, struct snd_sof_ipc_msg *msg)
{
 struct imx8_priv *priv = (struct imx8_priv *)sdev->private;

 sof_mailbox_write(sdev, sdev->host_box.offset, msg->msg_data,
     msg->msg_size);
 imx_dsp_ring_doorbell(priv->dsp_ipc, 0);

 return 0;
}
