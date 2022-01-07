
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int lineout1n_ena; int lineout1p_ena; int lineout2n_ena; int lineout2p_ena; } ;
struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;
 int SND_SOC_DAPM_EVENT_ON (int) ;
 int WARN (int,char*) ;




 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int lineout_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *control, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 bool *flag;

 switch (w->shift) {
 case 131:
  flag = &hubs->lineout1n_ena;
  break;
 case 130:
  flag = &hubs->lineout1p_ena;
  break;
 case 129:
  flag = &hubs->lineout2n_ena;
  break;
 case 128:
  flag = &hubs->lineout2p_ena;
  break;
 default:
  WARN(1, "Unknown line output");
  return -EINVAL;
 }

 *flag = SND_SOC_DAPM_EVENT_ON(event);

 return 0;
}
