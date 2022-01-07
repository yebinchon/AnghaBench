
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm3168a_priv {int regmap; } ;


 int PCM3168A_DAC_MUTE ;
 int regmap_write (int ,int ,int) ;
 struct pcm3168a_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm3168a_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct pcm3168a_priv *pcm3168a = snd_soc_component_get_drvdata(component);

 regmap_write(pcm3168a->regmap, PCM3168A_DAC_MUTE, mute ? 0xff : 0);

 return 0;
}
