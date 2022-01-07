
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct dw_i2s_dev {int capability; int dev; } ;


 int DW_I2S_MASTER ;
 int DW_I2S_SLAVE ;
 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_dbg (int ,char*) ;
 struct dw_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int dw_i2s_set_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
{
 struct dw_i2s_dev *dev = snd_soc_dai_get_drvdata(cpu_dai);
 int ret = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  if (dev->capability & DW_I2S_SLAVE)
   ret = 0;
  else
   ret = -EINVAL;
  break;
 case 128:
  if (dev->capability & DW_I2S_MASTER)
   ret = 0;
  else
   ret = -EINVAL;
  break;
 case 130:
 case 129:
  ret = -EINVAL;
  break;
 default:
  dev_dbg(dev->dev, "dwc : Invalid master/slave format\n");
  ret = -EINVAL;
  break;
 }
 return ret;
}
