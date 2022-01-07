
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; } ;


 int HDA_DSP_BAR ;
 int HDA_DSP_REG_HIPCCTL ;
 int HDA_DSP_REG_HIPCIE ;
 int HDA_DSP_REG_HIPCT ;
 int dev_err (int ,char*,int ,int ,int ) ;
 int hda_ipc_irq_dump (struct snd_sof_dev*) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;

void hda_ipc_dump(struct snd_sof_dev *sdev)
{
 u32 hipcie;
 u32 hipct;
 u32 hipcctl;

 hda_ipc_irq_dump(sdev);


 hipcie = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_HIPCIE);
 hipct = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_HIPCT);
 hipcctl = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_HIPCCTL);



 dev_err(sdev->dev,
  "error: host status 0x%8.8x dsp status 0x%8.8x mask 0x%8.8x\n",
  hipcie, hipct, hipcctl);
}
