
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_sof_dev {int dev; } ;
struct hdac_bus {int dummy; } ;


 int HDA_DSP_BAR ;
 int HDA_DSP_HDA_BAR ;
 int HDA_DSP_PP_BAR ;
 int HDA_DSP_REG_ADSPIS ;
 int RIRBSTS ;
 int SOF_HDA_INTCTL ;
 int SOF_HDA_INTSTS ;
 int SOF_HDA_REG_PP_PPSTS ;
 int dev_err (int ,char*,int ,int ,...) ;
 int snd_hdac_chip_readb (struct hdac_bus*,int ) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 struct hdac_bus* sof_to_bus (struct snd_sof_dev*) ;

void hda_ipc_irq_dump(struct snd_sof_dev *sdev)
{
 struct hdac_bus *bus = sof_to_bus(sdev);
 u32 adspis;
 u32 intsts;
 u32 intctl;
 u32 ppsts;
 u8 rirbsts;


 adspis = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPIS);
 intsts = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTSTS);
 intctl = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTCTL);
 ppsts = snd_sof_dsp_read(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPSTS);
 rirbsts = snd_hdac_chip_readb(bus, RIRBSTS);

 dev_err(sdev->dev,
  "error: hda irq intsts 0x%8.8x intlctl 0x%8.8x rirb %2.2x\n",
  intsts, intctl, rirbsts);
 dev_err(sdev->dev,
  "error: dsp irq ppsts 0x%8.8x adspis 0x%8.8x\n",
  ppsts, adspis);
}
