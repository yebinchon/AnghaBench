
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int base; } ;


 int EINVAL ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int WM5100_AIF1TX_LRCLK_INV ;
 int WM5100_AIF1TX_LRCLK_MSTR ;
 int WM5100_AIF1_BCLK_INV ;
 int WM5100_AIF1_BCLK_MSTR ;
 int WM5100_AIF1_FMT_MASK ;
 int dev_err (int ,char*,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;

__attribute__((used)) static int wm5100_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 int lrclk, bclk, mask, base;

 base = dai->driver->base;

 lrclk = 0;
 bclk = 0;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:
  mask = 0;
  break;
 case 132:
  mask = 2;
  break;
 default:
  dev_err(component->dev, "Unsupported DAI format %d\n",
   fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 134:
  break;
 case 135:
  lrclk |= WM5100_AIF1TX_LRCLK_MSTR;
  break;
 case 136:
  bclk |= WM5100_AIF1_BCLK_MSTR;
  break;
 case 137:
  lrclk |= WM5100_AIF1TX_LRCLK_MSTR;
  bclk |= WM5100_AIF1_BCLK_MSTR;
  break;
 default:
  dev_err(component->dev, "Unsupported master mode %d\n",
   fmt & SND_SOC_DAIFMT_MASTER_MASK);
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 131:
  bclk |= WM5100_AIF1_BCLK_INV;
  lrclk |= WM5100_AIF1TX_LRCLK_INV;
  break;
 case 130:
  bclk |= WM5100_AIF1_BCLK_INV;
  break;
 case 129:
  lrclk |= WM5100_AIF1TX_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, base + 1, WM5100_AIF1_BCLK_MSTR |
       WM5100_AIF1_BCLK_INV, bclk);
 snd_soc_component_update_bits(component, base + 2, WM5100_AIF1TX_LRCLK_MSTR |
       WM5100_AIF1TX_LRCLK_INV, lrclk);
 snd_soc_component_update_bits(component, base + 3, WM5100_AIF1TX_LRCLK_MSTR |
       WM5100_AIF1TX_LRCLK_INV, lrclk);
 snd_soc_component_update_bits(component, base + 5, WM5100_AIF1_FMT_MASK, mask);

 return 0;
}
