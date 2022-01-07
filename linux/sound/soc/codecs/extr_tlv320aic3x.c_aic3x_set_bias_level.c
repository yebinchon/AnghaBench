
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct aic3x_priv {int power; int master; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AIC3X_PLL_PROGA_REG ;
 int PLL_ENABLE ;




 int aic3x_set_power (struct snd_soc_component*,int) ;
 int const snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int aic3x_set_bias_level(struct snd_soc_component *component,
    enum snd_soc_bias_level level)
{
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  if (snd_soc_component_get_bias_level(component) == 128 &&
      aic3x->master) {

   snd_soc_component_update_bits(component, AIC3X_PLL_PROGA_REG,
         PLL_ENABLE, PLL_ENABLE);
  }
  break;
 case 128:
  if (!aic3x->power)
   aic3x_set_power(component, 1);
  if (snd_soc_component_get_bias_level(component) == 129 &&
      aic3x->master) {

   snd_soc_component_update_bits(component, AIC3X_PLL_PROGA_REG,
         PLL_ENABLE, 0);
  }
  break;
 case 131:
  if (aic3x->power)
   aic3x_set_power(component, 0);
  break;
 }

 return 0;
}
