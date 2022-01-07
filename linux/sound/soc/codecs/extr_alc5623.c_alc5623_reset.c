
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ALC5623_RESET ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static inline int alc5623_reset(struct snd_soc_component *component)
{
 return snd_soc_component_write(component, ALC5623_RESET, 0);
}
