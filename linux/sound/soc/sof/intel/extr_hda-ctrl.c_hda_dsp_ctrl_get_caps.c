
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; int * bar; } ;
struct hdac_bus {int remap_addr; int mlcap; int gtscap; int drsmcap; int spbcap; int ppcap; } ;


 size_t HDA_DSP_DRSM_BAR ;
 int HDA_DSP_HDA_BAR ;
 size_t HDA_DSP_PP_BAR ;
 size_t HDA_DSP_SPIB_BAR ;
 int SOF_HDA_CAP_ID_MASK ;
 int SOF_HDA_CAP_ID_OFF ;
 int SOF_HDA_CAP_NEXT_MASK ;


 int SOF_HDA_LLCH ;
 int SOF_HDA_MAX_CAPS ;



 int dev_dbg (int ,char*,int) ;
 int dev_vdbg (int ,char*,int,int) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int) ;
 struct hdac_bus* sof_to_bus (struct snd_sof_dev*) ;

int hda_dsp_ctrl_get_caps(struct snd_sof_dev *sdev)
{
 struct hdac_bus *bus = sof_to_bus(sdev);
 u32 cap, offset, feature;
 int count = 0;

 offset = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR, SOF_HDA_LLCH);

 do {
  cap = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR, offset);

  dev_dbg(sdev->dev, "checking for capabilities at offset 0x%x\n",
   offset & SOF_HDA_CAP_NEXT_MASK);

  feature = (cap & SOF_HDA_CAP_ID_MASK) >> SOF_HDA_CAP_ID_OFF;

  switch (feature) {
  case 129:
   dev_dbg(sdev->dev, "found DSP capability at 0x%x\n",
    offset);
   bus->ppcap = bus->remap_addr + offset;
   sdev->bar[HDA_DSP_PP_BAR] = bus->ppcap;
   break;
  case 128:
   dev_dbg(sdev->dev, "found SPIB capability at 0x%x\n",
    offset);
   bus->spbcap = bus->remap_addr + offset;
   sdev->bar[HDA_DSP_SPIB_BAR] = bus->spbcap;
   break;
  case 132:
   dev_dbg(sdev->dev, "found DRSM capability at 0x%x\n",
    offset);
   bus->drsmcap = bus->remap_addr + offset;
   sdev->bar[HDA_DSP_DRSM_BAR] = bus->drsmcap;
   break;
  case 131:
   dev_dbg(sdev->dev, "found GTS capability at 0x%x\n",
    offset);
   bus->gtscap = bus->remap_addr + offset;
   break;
  case 130:
   dev_dbg(sdev->dev, "found ML capability at 0x%x\n",
    offset);
   bus->mlcap = bus->remap_addr + offset;
   break;
  default:
   dev_vdbg(sdev->dev, "found capability %d at 0x%x\n",
     feature, offset);
   break;
  }

  offset = cap & SOF_HDA_CAP_NEXT_MASK;
 } while (count++ <= SOF_HDA_MAX_CAPS && offset);

 return 0;
}
