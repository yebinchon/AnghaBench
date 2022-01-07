
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_priv {unsigned int dai_fmt; } ;
struct snd_soc_dai {int dummy; } ;


 int EINVAL ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int pxa_ssp_set_dai_fmt(struct snd_soc_dai *cpu_dai,
          unsigned int fmt)
{
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
 case 136:
 case 135:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
 case 129:
 case 131:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
 case 134:
 case 133:
  break;

 default:
  return -EINVAL;
 }


 priv->dai_fmt = fmt;

 return 0;
}
