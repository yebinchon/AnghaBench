
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int AK5558_02_CONTROL1 ;
 int AK5558_CKS ;
 int AK5558_CKS_AUTO ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int ak5558_set_mcki(struct snd_soc_component *component)
{
 return snd_soc_component_update_bits(component, AK5558_02_CONTROL1, AK5558_CKS,
       AK5558_CKS_AUTO);
}
