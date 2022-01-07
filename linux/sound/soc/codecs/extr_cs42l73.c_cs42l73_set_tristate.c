
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS42L73_SPC (int) ;
 int CS42L73_SP_3ST ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int cs42l73_set_tristate(struct snd_soc_dai *dai, int tristate)
{
 struct snd_soc_component *component = dai->component;
 int id = dai->id;

 return snd_soc_component_update_bits(component, CS42L73_SPC(id), CS42L73_SP_3ST,
       tristate << 7);
}
