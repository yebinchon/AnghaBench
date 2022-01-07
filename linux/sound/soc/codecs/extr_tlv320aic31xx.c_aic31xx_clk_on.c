
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_component {int dev; } ;
struct aic31xx_priv {size_t rate_div_line; } ;
struct TYPE_2__ {scalar_t__ madc; scalar_t__ nadc; int rate; } ;


 int AIC31XX_BCLKN ;
 int AIC31XX_MADC ;
 int AIC31XX_MDAC ;
 int AIC31XX_NADC ;
 int AIC31XX_NDAC ;
 int AIC31XX_PLLPR ;
 int AIC31XX_PM_MASK ;
 TYPE_1__* aic31xx_divs ;
 int dev_dbg (int ,char*,int ) ;
 int mdelay (int) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void aic31xx_clk_on(struct snd_soc_component *component)
{
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);
 u8 mask = AIC31XX_PM_MASK;
 u8 on = AIC31XX_PM_MASK;

 dev_dbg(component->dev, "codec clock -> on (rate %d)\n",
  aic31xx_divs[aic31xx->rate_div_line].rate);
 snd_soc_component_update_bits(component, AIC31XX_PLLPR, mask, on);
 mdelay(10);
 snd_soc_component_update_bits(component, AIC31XX_NDAC, mask, on);
 snd_soc_component_update_bits(component, AIC31XX_MDAC, mask, on);
 if (aic31xx_divs[aic31xx->rate_div_line].nadc)
  snd_soc_component_update_bits(component, AIC31XX_NADC, mask, on);
 if (aic31xx_divs[aic31xx->rate_div_line].madc)
  snd_soc_component_update_bits(component, AIC31XX_MADC, mask, on);
 snd_soc_component_update_bits(component, AIC31XX_BCLKN, mask, on);
}
