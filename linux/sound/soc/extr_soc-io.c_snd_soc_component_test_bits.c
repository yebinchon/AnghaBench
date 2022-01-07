
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;

int snd_soc_component_test_bits(struct snd_soc_component *component,
 unsigned int reg, unsigned int mask, unsigned int value)
{
 unsigned int old, new;
 int ret;

 ret = snd_soc_component_read(component, reg, &old);
 if (ret < 0)
  return ret;
 new = (old & ~mask) | value;
 return old != new;
}
