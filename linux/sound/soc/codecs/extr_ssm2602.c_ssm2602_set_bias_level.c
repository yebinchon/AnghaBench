
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int clk_out_pwr; int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int PWR_CLK_OUT_PDN ;
 int PWR_OSC_PDN ;
 int PWR_POWER_OFF ;




 int SSM2602_PWR ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ssm2602_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:

  regmap_update_bits(ssm2602->regmap, SSM2602_PWR,
   PWR_POWER_OFF | PWR_CLK_OUT_PDN | PWR_OSC_PDN,
   ssm2602->clk_out_pwr);
  break;
 case 129:
  break;
 case 128:

  regmap_update_bits(ssm2602->regmap, SSM2602_PWR,
   PWR_POWER_OFF | PWR_CLK_OUT_PDN | PWR_OSC_PDN,
   PWR_CLK_OUT_PDN | PWR_OSC_PDN);
  break;
 case 131:

  regmap_update_bits(ssm2602->regmap, SSM2602_PWR,
   PWR_POWER_OFF, PWR_POWER_OFF);
  break;

 }
 return 0;
}
