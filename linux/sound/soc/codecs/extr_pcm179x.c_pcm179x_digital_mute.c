
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm179x_private {int regmap; } ;


 int PCM179X_MUTE_MASK ;
 int PCM179X_SOFT_MUTE ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct pcm179x_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm179x_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct pcm179x_private *priv = snd_soc_component_get_drvdata(component);
 int ret;

 ret = regmap_update_bits(priv->regmap, PCM179X_SOFT_MUTE,
     PCM179X_MUTE_MASK, !!mute);
 if (ret < 0)
  return ret;

 return 0;
}
