
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct es7241_data {unsigned int fmt; int is_slave; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;
 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int dev_err (int ,char*) ;
 struct es7241_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int es7241_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct es7241_data *priv = snd_soc_dai_get_drvdata(dai);

 if ((fmt & SND_SOC_DAIFMT_INV_MASK) != SND_SOC_DAIFMT_NB_NF) {
  dev_err(dai->dev, "Unsupported dai clock inversion\n");
  return -EINVAL;
 }

 if ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) != priv->fmt) {
  dev_err(dai->dev, "Invalid dai format\n");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 128:
  priv->is_slave = 1;
  break;
 case 129:
  priv->is_slave = 0;
  break;

 default:
  dev_err(dai->dev, "Unsupported clock configuration\n");
  return -EINVAL;
 }

 return 0;
}
