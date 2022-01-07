
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic31xx_priv {int regmap; scalar_t__ gpio_reset; } ;


 int AIC31XX_RESET ;
 int gpiod_set_value (scalar_t__,int) ;
 int mdelay (int) ;
 int ndelay (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int aic31xx_reset(struct aic31xx_priv *aic31xx)
{
 int ret = 0;

 if (aic31xx->gpio_reset) {
  gpiod_set_value(aic31xx->gpio_reset, 1);
  ndelay(10);
  gpiod_set_value(aic31xx->gpio_reset, 0);
 } else {
  ret = regmap_write(aic31xx->regmap, AIC31XX_RESET, 1);
 }
 mdelay(1);

 return ret;
}
