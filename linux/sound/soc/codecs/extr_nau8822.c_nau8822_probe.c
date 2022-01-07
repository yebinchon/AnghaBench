
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int * update_reg ;

__attribute__((used)) static int nau8822_probe(struct snd_soc_component *component)
{
 int i;






 for (i = 0; i < ARRAY_SIZE(update_reg); i++)
  snd_soc_component_update_bits(component,
   update_reg[i], 0x100, 0x100);

 return 0;
}
