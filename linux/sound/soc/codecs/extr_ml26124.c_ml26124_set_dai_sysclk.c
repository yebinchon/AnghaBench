
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ml26124_priv {int clk_in; unsigned int mclk; } ;


 int EINVAL ;


 struct ml26124_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ml26124_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct ml26124_priv *priv = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
  priv->clk_in = 128;
  break;
 case 129:
  priv->clk_in = 129;
  break;
 default:
  return -EINVAL;
 }

 priv->mclk = freq;

 return 0;
}
