
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ad1836_priv {int regmap; } ;


 int AD1836_ADC_CTRL2 ;
 int AD1836_ADC_SERFMT_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ad1836_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void ad1836_remove(struct snd_soc_component *component)
{
 struct ad1836_priv *ad1836 = snd_soc_component_get_drvdata(component);

 regmap_update_bits(ad1836->regmap, AD1836_ADC_CTRL2,
  AD1836_ADC_SERFMT_MASK, 0);
}
