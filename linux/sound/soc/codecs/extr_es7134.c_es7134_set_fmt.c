
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int es7134_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 fmt &= (SND_SOC_DAIFMT_FORMAT_MASK | SND_SOC_DAIFMT_INV_MASK |
  SND_SOC_DAIFMT_MASTER_MASK);

 if (fmt != (SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
      SND_SOC_DAIFMT_CBS_CFS)) {
  dev_err(codec_dai->dev, "Invalid DAI format\n");
  return -EINVAL;
 }

 return 0;
}
