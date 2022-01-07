
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT1011_CLASSD_INTERNAL_SET_1 ;
 int RT1011_DRIVER_READY_SPK ;
 int RT1011_POWER_9 ;
 int RT1011_POW_MNL_SDB ;
 int RT1011_POW_MNL_SDB_MASK ;
 int RT1011_SPK_TEMP_PROTECT_0 ;
 int RT1011_STP_EN ;
 int RT1011_STP_EN_MASK ;
 int RT1011_STP_RS_CLB_EN ;
 int RT1011_STP_RS_CLB_EN_MASK ;


 int msleep (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt1011_dac_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component,
   RT1011_SPK_TEMP_PROTECT_0,
   RT1011_STP_EN_MASK | RT1011_STP_RS_CLB_EN_MASK,
   RT1011_STP_EN | RT1011_STP_RS_CLB_EN);
  snd_soc_component_update_bits(component, RT1011_POWER_9,
   RT1011_POW_MNL_SDB_MASK, RT1011_POW_MNL_SDB);
  msleep(50);
  snd_soc_component_update_bits(component,
   RT1011_CLASSD_INTERNAL_SET_1,
   RT1011_DRIVER_READY_SPK, RT1011_DRIVER_READY_SPK);
  break;
 case 128:
  snd_soc_component_update_bits(component, RT1011_POWER_9,
   RT1011_POW_MNL_SDB_MASK, 0);
  snd_soc_component_update_bits(component,
   RT1011_SPK_TEMP_PROTECT_0,
   RT1011_STP_EN_MASK | RT1011_STP_RS_CLB_EN_MASK, 0);
  msleep(200);
  snd_soc_component_update_bits(component,
   RT1011_CLASSD_INTERNAL_SET_1,
   RT1011_DRIVER_READY_SPK, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
