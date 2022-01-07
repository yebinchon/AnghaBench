
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5086_private {int pwm_start_mid_z; scalar_t__ charge_period; int regmap; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int TAS5086_OSC_TRIM ;
 int TAS5086_PWM_START ;
 int TAS5086_PWM_START_MIDZ_FOR_START_1 ;
 int TAS5086_SOFT_MUTE ;
 int TAS5086_SOFT_MUTE_ALL ;
 int TAS5086_SPLIT_CAP_CHARGE ;
 int TAS5086_SYS_CONTROL_2 ;
 int dev_warn (struct device*,char*,scalar_t__) ;
 int index_in_array (int ,int ,scalar_t__) ;
 int regmap_write (int ,int ,int) ;
 int tas5086_charge_period ;

__attribute__((used)) static int tas5086_init(struct device *dev, struct tas5086_private *priv)
{
 int ret, i;






 if (priv->pwm_start_mid_z)
  regmap_write(priv->regmap, TAS5086_PWM_START,
        TAS5086_PWM_START_MIDZ_FOR_START_1 |
    priv->pwm_start_mid_z);


 if (priv->charge_period == 0) {
  regmap_write(priv->regmap, TAS5086_SPLIT_CAP_CHARGE, 0);
 } else {
  i = index_in_array(tas5086_charge_period,
       ARRAY_SIZE(tas5086_charge_period),
       priv->charge_period);
  if (i >= 0)
   regmap_write(priv->regmap, TAS5086_SPLIT_CAP_CHARGE,
         i + 0x08);
  else
   dev_warn(dev,
     "Invalid split-cap charge period of %d ns.\n",
     priv->charge_period);
 }


 ret = regmap_write(priv->regmap, TAS5086_OSC_TRIM, 0x00);
 if (ret < 0)
  return ret;


 ret = regmap_write(priv->regmap, TAS5086_SYS_CONTROL_2, 0x20);
 if (ret < 0)
  return ret;


 ret = regmap_write(priv->regmap, TAS5086_SOFT_MUTE,
      TAS5086_SOFT_MUTE_ALL);
 if (ret < 0)
  return ret;

 return 0;
}
