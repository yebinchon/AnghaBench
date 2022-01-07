
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int io_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_soc_component_read (struct snd_soc_component*,unsigned int,unsigned int*) ;
 int snd_soc_component_write (struct snd_soc_component*,unsigned int,unsigned int) ;

__attribute__((used)) static int snd_soc_component_update_bits_legacy(
 struct snd_soc_component *component, unsigned int reg,
 unsigned int mask, unsigned int val, bool *change)
{
 unsigned int old, new;
 int ret;

 mutex_lock(&component->io_mutex);

 ret = snd_soc_component_read(component, reg, &old);
 if (ret < 0)
  goto out_unlock;

 new = (old & ~mask) | (val & mask);
 *change = old != new;
 if (*change)
  ret = snd_soc_component_write(component, reg, new);
out_unlock:
 mutex_unlock(&component->io_mutex);

 return ret;
}
