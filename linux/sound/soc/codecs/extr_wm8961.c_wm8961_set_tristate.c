
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8961_ADDITIONAL_CONTROL_2 ;
 int WM8961_TRIS ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8961_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 struct snd_soc_component *component = dai->component;
 u16 reg = snd_soc_component_read32(component, WM8961_ADDITIONAL_CONTROL_2);

 if (tristate)
  reg |= WM8961_TRIS;
 else
  reg &= ~WM8961_TRIS;

 return snd_soc_component_write(component, WM8961_ADDITIONAL_CONTROL_2, reg);
}
