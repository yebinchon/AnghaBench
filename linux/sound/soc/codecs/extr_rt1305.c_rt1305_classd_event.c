
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT1305_POWER_CTRL_1 ;
 int RT1305_POW_PDB_JD ;
 int RT1305_POW_PDB_JD_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt1305_classd_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, RT1305_POWER_CTRL_1,
   RT1305_POW_PDB_JD_MASK, RT1305_POW_PDB_JD);
  break;
 case 128:
  snd_soc_component_update_bits(component, RT1305_POWER_CTRL_1,
   RT1305_POW_PDB_JD_MASK, 0);
  usleep_range(150000, 200000);
  break;

 default:
  return 0;
 }

 return 0;
}
