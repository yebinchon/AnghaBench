
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int RT5631_INDEX_ADD ;
 int RT5631_INDEX_DATA ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static void rt5631_write_index(struct snd_soc_component *component,
  unsigned int reg, unsigned int value)
{
 snd_soc_component_write(component, RT5631_INDEX_ADD, reg);
 snd_soc_component_write(component, RT5631_INDEX_DATA, value);
}
