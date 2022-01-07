
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm1789_private {int regmap; } ;


 int PCM1789_MUTE_MASK ;
 int PCM1789_SOFT_MUTE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct pcm1789_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm1789_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 struct pcm1789_private *priv = snd_soc_component_get_drvdata(component);

 return regmap_update_bits(priv->regmap, PCM1789_SOFT_MUTE,
      PCM1789_MUTE_MASK,
      mute ? 0 : PCM1789_MUTE_MASK);
}
