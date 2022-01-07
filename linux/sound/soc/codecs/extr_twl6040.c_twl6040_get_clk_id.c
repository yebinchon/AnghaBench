
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int pll_power_mode; } ;
struct snd_soc_component {int dummy; } ;


 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int twl6040_get_clk_id(struct snd_soc_component *component)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 return priv->pll_power_mode;
}
