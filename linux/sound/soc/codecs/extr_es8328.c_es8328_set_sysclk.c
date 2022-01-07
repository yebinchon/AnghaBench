
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct es8328_priv {int mclkdiv2; int * mclk_ratios; int * sysclk_constraints; } ;


 int EINVAL ;
 int constraints_11289 ;
 int constraints_12288 ;
 int * ratios_11289 ;
 int * ratios_12288 ;
 struct es8328_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int es8328_set_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct es8328_priv *es8328 = snd_soc_component_get_drvdata(component);
 int mclkdiv2 = 0;

 switch (freq) {
 case 0:
  es8328->sysclk_constraints = ((void*)0);
  es8328->mclk_ratios = ((void*)0);
  break;
 case 22579200:
  mclkdiv2 = 1;

 case 11289600:
  es8328->sysclk_constraints = &constraints_11289;
  es8328->mclk_ratios = ratios_11289;
  break;
 case 24576000:
  mclkdiv2 = 1;

 case 12288000:
  es8328->sysclk_constraints = &constraints_12288;
  es8328->mclk_ratios = ratios_12288;
  break;
 default:
  return -EINVAL;
 }

 es8328->mclkdiv2 = mclkdiv2;
 return 0;
}
