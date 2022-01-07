
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int pll; unsigned int clk_in; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;


 int dev_err (int ,char*,int) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int twl6040_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
 case 129:
  priv->pll = clk_id;
  priv->clk_in = freq;
  break;
 default:
  dev_err(component->dev, "unknown clk_id %d\n", clk_id);
  return -EINVAL;
 }

 return 0;
}
