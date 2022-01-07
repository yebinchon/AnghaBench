
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int MAX9850_CHARGE_PUMP ;
 int MAX9850_GENERAL_PURPOSE ;
 int MAX9850_VOLUME ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int max9850_probe(struct snd_soc_component *component)
{

 snd_soc_component_update_bits(component, MAX9850_GENERAL_PURPOSE, 1, 1);

 snd_soc_component_update_bits(component, MAX9850_VOLUME, 0x40, 0x40);

 snd_soc_component_update_bits(component, MAX9850_CHARGE_PUMP, 0xff, 0xc0);

 return 0;
}
