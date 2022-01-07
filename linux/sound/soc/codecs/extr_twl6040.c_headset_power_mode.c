
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int TWL6040_HSDACMODE ;
 int TWL6040_HSDRVMODE ;
 int TWL6040_REG_HSLCTL ;
 int TWL6040_REG_HSRCTL ;
 int twl6040_read (struct snd_soc_component*,int ) ;
 int twl6040_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int headset_power_mode(struct snd_soc_component *component, int high_perf)
{
 int hslctl, hsrctl;
 int mask = TWL6040_HSDRVMODE | TWL6040_HSDACMODE;

 hslctl = twl6040_read(component, TWL6040_REG_HSLCTL);
 hsrctl = twl6040_read(component, TWL6040_REG_HSRCTL);

 if (high_perf) {
  hslctl &= ~mask;
  hsrctl &= ~mask;
 } else {
  hslctl |= mask;
  hsrctl |= mask;
 }

 twl6040_write(component, TWL6040_REG_HSLCTL, hslctl);
 twl6040_write(component, TWL6040_REG_HSRCTL, hsrctl);

 return 0;
}
