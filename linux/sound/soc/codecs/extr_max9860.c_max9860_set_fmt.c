
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max9860_priv {unsigned int fmt; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 struct max9860_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max9860_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct max9860_priv *max9860 = snd_soc_component_get_drvdata(component);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
 case 128:
  max9860->fmt = fmt;
  return 0;

 default:
  return -EINVAL;
 }
}
