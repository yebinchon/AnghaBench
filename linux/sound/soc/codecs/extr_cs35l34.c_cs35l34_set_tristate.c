
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS35L34_PDN_SDOUT ;
 int CS35L34_PWRCTL3 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs35l34_set_tristate(struct snd_soc_dai *dai, int tristate)
{

 struct snd_soc_component *component = dai->component;

 if (tristate)
  snd_soc_component_update_bits(component, CS35L34_PWRCTL3,
     CS35L34_PDN_SDOUT, CS35L34_PDN_SDOUT);
 else
  snd_soc_component_update_bits(component, CS35L34_PWRCTL3,
     CS35L34_PDN_SDOUT, 0);
 return 0;
}
