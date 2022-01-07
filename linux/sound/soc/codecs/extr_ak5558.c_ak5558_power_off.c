
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak5558_priv {int reset_gpiod; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ak5558_power_off(struct ak5558_priv *ak5558)
{
 if (!ak5558->reset_gpiod)
  return;

 gpiod_set_value_cansleep(ak5558->reset_gpiod, 0);
 usleep_range(1000, 2000);
}
