
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int micb2_delay; int micb1_delay; } ;
struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 int msleep (int ) ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int micbias_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);

 switch (w->shift) {
 case 129:
  if (hubs->micb1_delay)
   msleep(hubs->micb1_delay);
  break;
 case 128:
  if (hubs->micb2_delay)
   msleep(hubs->micb2_delay);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
