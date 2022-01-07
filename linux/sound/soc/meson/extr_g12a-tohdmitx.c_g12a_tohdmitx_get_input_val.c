
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int TOHDMITX_CTRL0 ;
 unsigned int __ffs (unsigned int) ;
 int snd_soc_component_read (struct snd_soc_component*,int ,unsigned int*) ;

__attribute__((used)) static int g12a_tohdmitx_get_input_val(struct snd_soc_component *component,
           unsigned int mask)
{
 unsigned int val;

 snd_soc_component_read(component, TOHDMITX_CTRL0, &val);
 return (val & mask) >> __ffs(mask);
}
