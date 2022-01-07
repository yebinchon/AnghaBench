
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs42xx8_priv {unsigned int sysclk; } ;


 struct cs42xx8_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42xx8_set_dai_sysclk(struct snd_soc_dai *codec_dai,
      int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs42xx8_priv *cs42xx8 = snd_soc_component_get_drvdata(component);

 cs42xx8->sysclk = freq;

 return 0;
}
