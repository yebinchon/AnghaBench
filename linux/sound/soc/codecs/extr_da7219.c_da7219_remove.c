
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct da7219_priv {int supplies; scalar_t__* dai_clks_lookup; } ;


 int DA7219_DAI_NUM_CLKS ;
 int DA7219_NUM_SUPPLIES ;
 int clkdev_drop (scalar_t__) ;
 int da7219_aad_exit (struct snd_soc_component*) ;
 int regulator_bulk_disable (int ,int ) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void da7219_remove(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);




 da7219_aad_exit(component);
 regulator_bulk_disable(DA7219_NUM_SUPPLIES, da7219->supplies);
}
