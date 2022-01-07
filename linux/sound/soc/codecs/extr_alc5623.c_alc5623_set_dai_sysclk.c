
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct alc5623_priv {unsigned int sysclk; } ;


 int EINVAL ;
 struct alc5623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int alc5623_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct alc5623_priv *alc5623 = snd_soc_component_get_drvdata(component);

 switch (freq) {
 case 8192000:
 case 11289600:
 case 12288000:
 case 16384000:
 case 16934400:
 case 18432000:
 case 22579200:
 case 24576000:
  alc5623->sysclk = freq;
  return 0;
 }
 return -EINVAL;
}
