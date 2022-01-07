
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
struct clk_bulk_data {char* id; int clk; } ;
struct aic32x4_priv {int power_cfg; int micpga_routing; scalar_t__ setup; int rstn_gpio; } ;


 int AIC32X4_ADCSETUP ;
 int AIC32X4_AVDDWEAKDISABLE ;
 int AIC32X4_CMMODE ;
 int AIC32X4_LADC_EN ;
 int AIC32X4_LDOCTL ;
 int AIC32X4_LDOCTLEN ;
 int AIC32X4_LDOIN2HP ;
 int AIC32X4_LDOIN_18_36 ;
 int AIC32X4_LMICPGANIN ;
 int AIC32X4_LMICPGANIN_CM1L_10K ;
 int AIC32X4_LMICPGANIN_IN2R_10K ;
 int AIC32X4_MICBIAS ;
 int AIC32X4_MICBIAS_2075V ;
 int AIC32X4_MICBIAS_LDOIN ;
 int AIC32X4_MICPGA_ROUTE_LMIC_IN2R_10K ;
 int AIC32X4_MICPGA_ROUTE_RMIC_IN1L_10K ;
 int AIC32X4_PWRCFG ;
 int AIC32X4_PWR_AIC32X4_LDO_ENABLE ;
 int AIC32X4_PWR_AVDD_DVDD_WEAK_DISABLE ;
 int AIC32X4_PWR_CMMODE_HP_LDOIN_POWERED ;
 int AIC32X4_PWR_CMMODE_LDOIN_RANGE_18_36 ;
 int AIC32X4_PWR_MICBIAS_2075_LDOIN ;
 int AIC32X4_RADC_EN ;
 int AIC32X4_RESET ;
 int AIC32X4_RMICPGANIN ;
 int AIC32X4_RMICPGANIN_CM1R_10K ;
 int AIC32X4_RMICPGANIN_IN1L_10K ;
 int ARRAY_SIZE (struct clk_bulk_data*) ;
 int aic32x4_setup_gpios (struct snd_soc_component*) ;
 int clk_set_parent (int ,int ) ;
 int devm_clk_bulk_get (int ,int ,struct clk_bulk_data*) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int ndelay (int) ;
 struct aic32x4_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic32x4_component_probe(struct snd_soc_component *component)
{
 struct aic32x4_priv *aic32x4 = snd_soc_component_get_drvdata(component);
 u32 tmp_reg;
 int ret;

 struct clk_bulk_data clocks[] = {
  { .id = "codec_clkin" },
  { .id = "pll" },
  { .id = "bdiv" },
  { .id = "mdac" },
 };

 ret = devm_clk_bulk_get(component->dev, ARRAY_SIZE(clocks), clocks);
 if (ret)
  return ret;

 if (gpio_is_valid(aic32x4->rstn_gpio)) {
  ndelay(10);
  gpio_set_value(aic32x4->rstn_gpio, 1);
  mdelay(1);
 }

 snd_soc_component_write(component, AIC32X4_RESET, 0x01);

 if (aic32x4->setup)
  aic32x4_setup_gpios(component);

 clk_set_parent(clocks[0].clk, clocks[1].clk);
 clk_set_parent(clocks[2].clk, clocks[3].clk);


 if (aic32x4->power_cfg & AIC32X4_PWR_MICBIAS_2075_LDOIN) {
  snd_soc_component_write(component, AIC32X4_MICBIAS,
    AIC32X4_MICBIAS_LDOIN | AIC32X4_MICBIAS_2075V);
 }
 if (aic32x4->power_cfg & AIC32X4_PWR_AVDD_DVDD_WEAK_DISABLE)
  snd_soc_component_write(component, AIC32X4_PWRCFG, AIC32X4_AVDDWEAKDISABLE);

 tmp_reg = (aic32x4->power_cfg & AIC32X4_PWR_AIC32X4_LDO_ENABLE) ?
   AIC32X4_LDOCTLEN : 0;
 snd_soc_component_write(component, AIC32X4_LDOCTL, tmp_reg);

 tmp_reg = snd_soc_component_read32(component, AIC32X4_CMMODE);
 if (aic32x4->power_cfg & AIC32X4_PWR_CMMODE_LDOIN_RANGE_18_36)
  tmp_reg |= AIC32X4_LDOIN_18_36;
 if (aic32x4->power_cfg & AIC32X4_PWR_CMMODE_HP_LDOIN_POWERED)
  tmp_reg |= AIC32X4_LDOIN2HP;
 snd_soc_component_write(component, AIC32X4_CMMODE, tmp_reg);


 if (aic32x4->micpga_routing & AIC32X4_MICPGA_ROUTE_LMIC_IN2R_10K)
  snd_soc_component_write(component, AIC32X4_LMICPGANIN,
    AIC32X4_LMICPGANIN_IN2R_10K);
 else
  snd_soc_component_write(component, AIC32X4_LMICPGANIN,
    AIC32X4_LMICPGANIN_CM1L_10K);
 if (aic32x4->micpga_routing & AIC32X4_MICPGA_ROUTE_RMIC_IN1L_10K)
  snd_soc_component_write(component, AIC32X4_RMICPGANIN,
    AIC32X4_RMICPGANIN_IN1L_10K);
 else
  snd_soc_component_write(component, AIC32X4_RMICPGANIN,
    AIC32X4_RMICPGANIN_CM1R_10K);






 tmp_reg = snd_soc_component_read32(component, AIC32X4_ADCSETUP);
 snd_soc_component_write(component, AIC32X4_ADCSETUP, tmp_reg |
    AIC32X4_LADC_EN | AIC32X4_RADC_EN);
 snd_soc_component_write(component, AIC32X4_ADCSETUP, tmp_reg);

 return 0;
}
