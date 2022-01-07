
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 int WARN (int,char*,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm8996_bg_disable (struct snd_soc_component*) ;
 int wm8996_bg_enable (struct snd_soc_component*) ;

__attribute__((used)) static int bg_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 int ret = 0;

 switch (event) {
 case 128:
  wm8996_bg_enable(component);
  break;
 case 129:
  wm8996_bg_disable(component);
  break;
 default:
  WARN(1, "Invalid event %d\n", event);
  ret = -EINVAL;
 }

 return ret;
}
