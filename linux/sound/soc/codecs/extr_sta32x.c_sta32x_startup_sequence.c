
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta32x_priv {scalar_t__ gpiod_nreset; } ;


 int gpiod_set_value (scalar_t__,int) ;
 int mdelay (int) ;

__attribute__((used)) static int sta32x_startup_sequence(struct sta32x_priv *sta32x)
{
 if (sta32x->gpiod_nreset) {
  gpiod_set_value(sta32x->gpiod_nreset, 0);
  mdelay(1);
  gpiod_set_value(sta32x->gpiod_nreset, 1);
  mdelay(1);
 }

 return 0;
}
