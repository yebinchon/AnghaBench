
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct sgtl5000_priv {unsigned int sysclk; } ;


 int EINVAL ;

 struct sgtl5000_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int sgtl5000_set_dai_sysclk(struct snd_soc_dai *codec_dai,
       int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct sgtl5000_priv *sgtl5000 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
  sgtl5000->sysclk = freq;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
