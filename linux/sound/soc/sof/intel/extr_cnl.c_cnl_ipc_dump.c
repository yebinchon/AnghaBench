
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; } ;


 int CNL_DSP_REG_HIPCCTL ;
 int CNL_DSP_REG_HIPCIDA ;
 int CNL_DSP_REG_HIPCTDR ;
 int HDA_DSP_BAR ;
 int dev_err (int ,char*,int ,int ,int ) ;
 int hda_ipc_irq_dump (struct snd_sof_dev*) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;

__attribute__((used)) static void cnl_ipc_dump(struct snd_sof_dev *sdev)
{
 u32 hipcctl;
 u32 hipcida;
 u32 hipctdr;

 hda_ipc_irq_dump(sdev);


 hipcida = snd_sof_dsp_read(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCIDA);
 hipcctl = snd_sof_dsp_read(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCCTL);
 hipctdr = snd_sof_dsp_read(sdev, HDA_DSP_BAR, CNL_DSP_REG_HIPCTDR);



 dev_err(sdev->dev,
  "error: host status 0x%8.8x dsp status 0x%8.8x mask 0x%8.8x\n",
  hipcida, hipctdr, hipcctl);
}
