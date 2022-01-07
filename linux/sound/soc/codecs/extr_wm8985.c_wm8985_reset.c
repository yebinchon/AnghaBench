
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WM8985_SOFTWARE_RESET ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8985_reset(struct snd_soc_component *component)
{
 return snd_soc_component_write(component, WM8985_SOFTWARE_RESET, 0x0);
}
