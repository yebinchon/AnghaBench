
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill_gpio_data {int clk_enabled; int clk; int reset_gpio; int shutdown_gpio; } ;


 int IS_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static int rfkill_gpio_set_power(void *data, bool blocked)
{
 struct rfkill_gpio_data *rfkill = data;

 if (!blocked && !IS_ERR(rfkill->clk) && !rfkill->clk_enabled)
  clk_enable(rfkill->clk);

 gpiod_set_value_cansleep(rfkill->shutdown_gpio, !blocked);
 gpiod_set_value_cansleep(rfkill->reset_gpio, !blocked);

 if (blocked && !IS_ERR(rfkill->clk) && rfkill->clk_enabled)
  clk_disable(rfkill->clk);

 rfkill->clk_enabled = !blocked;

 return 0;
}
