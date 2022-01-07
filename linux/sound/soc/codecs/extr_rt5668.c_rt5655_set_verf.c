
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5668_PWR_ANLG_1 ;
 int RT5668_PWR_FV1 ;
 int RT5668_PWR_FV2 ;




 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5655_set_verf(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  switch (w->shift) {
  case 131:
   snd_soc_component_update_bits(component,
    RT5668_PWR_ANLG_1, RT5668_PWR_FV1, 0);
   break;

  case 130:
   snd_soc_component_update_bits(component,
    RT5668_PWR_ANLG_1, RT5668_PWR_FV2, 0);
   break;

  default:
   break;
  }
  break;

 case 129:
  usleep_range(15000, 20000);
  switch (w->shift) {
  case 131:
   snd_soc_component_update_bits(component,
    RT5668_PWR_ANLG_1, RT5668_PWR_FV1,
    RT5668_PWR_FV1);
   break;

  case 130:
   snd_soc_component_update_bits(component,
    RT5668_PWR_ANLG_1, RT5668_PWR_FV2,
    RT5668_PWR_FV2);
   break;

  default:
   break;
  }
  break;

 default:
  return 0;
 }

 return 0;
}
