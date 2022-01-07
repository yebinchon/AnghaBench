
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WM8900_REG_RESET ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void wm8900_reset(struct snd_soc_component *component)
{
 snd_soc_component_write(component, WM8900_REG_RESET, 0);
}
