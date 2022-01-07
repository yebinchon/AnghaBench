
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reset; } ;
struct wm2200_priv {int regmap; TYPE_1__ pdata; } ;


 int WM2200_SOFTWARE_RESET ;
 int gpio_set_value_cansleep (scalar_t__,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int wm2200_reset(struct wm2200_priv *wm2200)
{
 if (wm2200->pdata.reset) {
  gpio_set_value_cansleep(wm2200->pdata.reset, 0);
  gpio_set_value_cansleep(wm2200->pdata.reset, 1);

  return 0;
 } else {
  return regmap_write(wm2200->regmap, WM2200_SOFTWARE_RESET,
        0x2200);
 }
}
