
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;
struct snd_sof_dev {TYPE_1__ dsp_box; } ;
struct snd_pcm_substream {int dummy; } ;


 int sof_mailbox_read (struct snd_sof_dev*,int ,void*,size_t) ;

__attribute__((used)) static void imx8_ipc_msg_data(struct snd_sof_dev *sdev,
         struct snd_pcm_substream *substream,
         void *p, size_t sz)
{
 sof_mailbox_read(sdev, sdev->dsp_box.offset, p, sz);
}
