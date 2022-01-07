
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;


 int AIC31XX_BCLKN ;
 int AIC31XX_MADC ;
 int AIC31XX_MDAC ;
 int AIC31XX_NADC ;
 int AIC31XX_NDAC ;
 int AIC31XX_PLLPR ;
 int AIC31XX_PM_MASK ;
 int dev_dbg (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void aic31xx_clk_off(struct snd_soc_component *component)
{
 u8 mask = AIC31XX_PM_MASK;
 u8 off = 0;

 dev_dbg(component->dev, "codec clock -> off\n");
 snd_soc_component_update_bits(component, AIC31XX_BCLKN, mask, off);
 snd_soc_component_update_bits(component, AIC31XX_MADC, mask, off);
 snd_soc_component_update_bits(component, AIC31XX_NADC, mask, off);
 snd_soc_component_update_bits(component, AIC31XX_MDAC, mask, off);
 snd_soc_component_update_bits(component, AIC31XX_NDAC, mask, off);
 snd_soc_component_update_bits(component, AIC31XX_PLLPR, mask, off);
}
