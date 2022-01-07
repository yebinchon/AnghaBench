
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int MAX_PLL_LOCK_20MS_WAITS ;
 int R_PLLCTL0 ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static bool plls_locked(struct snd_soc_component *component)
{
 int ret;
 int count = MAX_PLL_LOCK_20MS_WAITS;

 do {
  ret = snd_soc_component_read32(component, R_PLLCTL0);
  if (ret < 0) {
   dev_err(component->dev,
    "Failed to read PLL lock status (%d)\n", ret);
   return 0;
  } else if (ret > 0) {
   return 1;
  }
  msleep(20);
 } while (count--);

 return 0;
}
