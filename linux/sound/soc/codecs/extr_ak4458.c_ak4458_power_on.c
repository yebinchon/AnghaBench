
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4458_priv {scalar_t__ reset_gpiod; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ak4458_power_on(struct ak4458_priv *ak4458)
{
 if (ak4458->reset_gpiod) {
  gpiod_set_value_cansleep(ak4458->reset_gpiod, 1);
  usleep_range(1000, 2000);
 }
}
