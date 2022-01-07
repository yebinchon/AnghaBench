
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int RT5645_RESET ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int rt5645_reset(struct snd_soc_component *component)
{
 return snd_soc_component_write(component, RT5645_RESET, 0);
}
