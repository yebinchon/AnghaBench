
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ SND_SOC_DAPM_EVENT_OFF (int) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int SUN8I_ADDA_PAEN_HP_CTRL ;
 int SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN ;
 int msleep (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int sun8i_headphone_amp_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *k, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  snd_soc_component_update_bits(component, SUN8I_ADDA_PAEN_HP_CTRL,
           BIT(SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN),
           BIT(SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN));





  msleep(700);
 } else if (SND_SOC_DAPM_EVENT_OFF(event)) {
  snd_soc_component_update_bits(component, SUN8I_ADDA_PAEN_HP_CTRL,
           BIT(SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN),
           0x0);
 }

 return 0;
}
