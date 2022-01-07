
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;

unsigned int snd_soc_component_read32(struct snd_soc_component *component,
          unsigned int reg)
{
 unsigned int val;
 int ret;

 ret = snd_soc_component_read(component, reg, &val);
 if (ret < 0)
  return -1;

 return val;
}
