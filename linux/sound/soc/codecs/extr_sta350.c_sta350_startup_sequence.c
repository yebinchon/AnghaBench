
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta350_priv {scalar_t__ gpiod_nreset; scalar_t__ gpiod_power_down; } ;


 int gpiod_set_value (scalar_t__,int) ;
 int mdelay (int) ;

__attribute__((used)) static int sta350_startup_sequence(struct sta350_priv *sta350)
{
 if (sta350->gpiod_power_down)
  gpiod_set_value(sta350->gpiod_power_down, 1);

 if (sta350->gpiod_nreset) {
  gpiod_set_value(sta350->gpiod_nreset, 0);
  mdelay(1);
  gpiod_set_value(sta350->gpiod_nreset, 1);
  mdelay(1);
 }

 return 0;
}
