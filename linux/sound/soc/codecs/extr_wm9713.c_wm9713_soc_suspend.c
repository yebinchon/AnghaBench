
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int AC97_EXTENDED_MID ;
 int AC97_EXTENDED_MSTATUS ;
 int AC97_POWERDOWN ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm9713_soc_suspend(struct snd_soc_component *component)
{



 snd_soc_component_update_bits(component, AC97_EXTENDED_MID, 0x7fff,
     0x7fff);
 snd_soc_component_write(component, AC97_EXTENDED_MSTATUS, 0xffff);
 snd_soc_component_write(component, AC97_POWERDOWN, 0x6f00);
 snd_soc_component_write(component, AC97_POWERDOWN, 0xffff);

 return 0;
}
