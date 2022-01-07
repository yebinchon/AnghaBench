
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm1681_private {int regmap; } ;


 int PCM1681_SOFT_MUTE ;
 int PCM1681_SOFT_MUTE_ALL ;
 int regmap_write (int ,int ,int) ;
 struct pcm1681_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm1681_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct pcm1681_private *priv = snd_soc_component_get_drvdata(component);
 int val;

 if (mute)
  val = PCM1681_SOFT_MUTE_ALL;
 else
  val = 0;

 return regmap_write(priv->regmap, PCM1681_SOFT_MUTE, val);
}
