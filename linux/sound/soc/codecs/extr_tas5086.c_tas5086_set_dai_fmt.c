
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5086_private {unsigned int format; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (int ,char*) ;
 struct tas5086_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tas5086_set_dai_fmt(struct snd_soc_dai *codec_dai,
          unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;
 struct tas5086_private *priv = snd_soc_component_get_drvdata(component);


 if ((format & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS) {
  dev_err(component->dev, "Invalid clocking mode\n");
  return -EINVAL;
 }


 priv->format = format;

 return 0;
}
