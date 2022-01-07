
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int rt5640_reset (struct snd_soc_component*) ;

__attribute__((used)) static void rt5640_remove(struct snd_soc_component *component)
{
 rt5640_reset(component);
}
