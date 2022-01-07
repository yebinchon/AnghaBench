
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int set_sysclk (struct snd_soc_component*) ;

__attribute__((used)) static int tscs42xx_probe(struct snd_soc_component *component)
{
 return set_sysclk(component);
}
