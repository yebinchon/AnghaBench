
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT298_SET_EAPD_HIGH ;
 int RT298_SET_EAPD_LOW ;
 int RT298_SPK_EAPD ;


 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt298_spk_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_write(component,
   RT298_SPK_EAPD, RT298_SET_EAPD_HIGH);
  break;
 case 128:
  snd_soc_component_write(component,
   RT298_SPK_EAPD, RT298_SET_EAPD_LOW);
  break;

 default:
  return 0;
 }

 return 0;
}
