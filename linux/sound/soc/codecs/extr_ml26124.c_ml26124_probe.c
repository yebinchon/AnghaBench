
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ML26124_SW_RST ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ml26124_probe(struct snd_soc_component *component)
{

 snd_soc_component_update_bits(component, ML26124_SW_RST, 0x01, 1);
 snd_soc_component_update_bits(component, ML26124_SW_RST, 0x01, 0);

 return 0;
}
