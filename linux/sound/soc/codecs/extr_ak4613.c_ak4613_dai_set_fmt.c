
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak4613_priv {unsigned int fmt; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 struct ak4613_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4613_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct ak4613_priv *priv = snd_soc_component_get_drvdata(component);

 fmt &= SND_SOC_DAIFMT_FORMAT_MASK;

 switch (fmt) {
 case 128:
 case 129:
  priv->fmt = fmt;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
