
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs4341_priv {unsigned int fmt; } ;


 int EINVAL ;

 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 struct cs4341_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs4341_set_fmt(struct snd_soc_dai *dai, unsigned int format)
{
 struct snd_soc_component *component = dai->component;
 struct cs4341_priv *cs4341 = snd_soc_component_get_drvdata(component);

 switch (format & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  break;
 default:
  return -EINVAL;
 }

 switch (format & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 default:
  return -EINVAL;
 }

 switch (format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
 case 130:
 case 128:
  cs4341->fmt = format & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
