
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5086_private {int gpio_nreset; } ;


 int gpio_direction_output (int ,int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static void tas5086_reset(struct tas5086_private *priv)
{
 if (gpio_is_valid(priv->gpio_nreset)) {

  gpio_direction_output(priv->gpio_nreset, 0);
  udelay(1);
  gpio_set_value(priv->gpio_nreset, 1);


  msleep(15);
 }
}
