
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8996_priv {int hpout_pending; } ;
struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 int WARN (int,char*,int) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rmv_short_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);


 switch (event) {
 case 129:
  wm8996->hpout_pending &= ~w->shift;
  break;
 case 128:
  wm8996->hpout_pending |= w->shift;
  break;
 default:
  WARN(1, "Invalid event %d\n", event);
  return -EINVAL;
 }

 return 0;
}
