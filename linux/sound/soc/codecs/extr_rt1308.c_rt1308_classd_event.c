
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT1308_POWER_STATUS ;
 int RT1308_POW_PDB_MN_BIT ;
 int RT1308_POW_PDB_REG_BIT ;


 int msleep (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt1308_classd_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  msleep(30);
  snd_soc_component_update_bits(component, RT1308_POWER_STATUS,
   RT1308_POW_PDB_REG_BIT | RT1308_POW_PDB_MN_BIT,
   RT1308_POW_PDB_REG_BIT | RT1308_POW_PDB_MN_BIT);
  msleep(40);
  break;
 case 128:
  snd_soc_component_update_bits(component, RT1308_POWER_STATUS,
   RT1308_POW_PDB_REG_BIT | RT1308_POW_PDB_MN_BIT, 0);
  usleep_range(150000, 200000);
  break;

 default:
  break;
 }

 return 0;
}
