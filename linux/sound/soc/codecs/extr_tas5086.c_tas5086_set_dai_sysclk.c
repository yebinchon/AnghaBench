
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5086_private {unsigned int mclk; unsigned int sclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;




 struct tas5086_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tas5086_set_dai_sysclk(struct snd_soc_dai *codec_dai,
      int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct tas5086_private *priv = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 129:
  priv->mclk = freq;
  break;
 case 128:
  priv->sclk = freq;
  break;
 }

 return 0;
}
