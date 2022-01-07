
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int codec_powered; } ;
struct twl6040 {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int TWL6040_REG_GPOCTL ;
 int TWL6040_SYSCLK_SEL_LPPLL ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct twl6040* to_twl6040 (struct snd_soc_component*) ;
 int twl6040_power (struct twl6040*,int) ;
 int twl6040_set_pll (struct twl6040*,int ,int,int) ;
 int twl6040_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int twl6040_set_bias_level(struct snd_soc_component *component,
    enum snd_soc_bias_level level)
{
 struct twl6040 *twl6040 = to_twl6040(component);
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);
 int ret = 0;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (priv->codec_powered) {

   ret = twl6040_set_pll(twl6040, TWL6040_SYSCLK_SEL_LPPLL,
           32768, 19200000);
   break;
  }

  ret = twl6040_power(twl6040, 1);
  if (ret)
   break;

  priv->codec_powered = 1;


  twl6040_write(component, TWL6040_REG_GPOCTL, 0x02);
  break;
 case 131:
  if (!priv->codec_powered)
   break;

  twl6040_power(twl6040, 0);
  priv->codec_powered = 0;
  break;
 }

 return ret;
}
