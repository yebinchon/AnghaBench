
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int diff_mode; } ;
struct wm8741_priv {TYPE_1__ pdata; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;




 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct wm8741_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8741_snd_controls_mono_left ;
 int wm8741_snd_controls_mono_right ;
 int wm8741_snd_controls_stereo ;

__attribute__((used)) static int wm8741_add_controls(struct snd_soc_component *component)
{
 struct wm8741_priv *wm8741 = snd_soc_component_get_drvdata(component);

 switch (wm8741->pdata.diff_mode) {
 case 129:
 case 128:
  snd_soc_add_component_controls(component,
    wm8741_snd_controls_stereo,
    ARRAY_SIZE(wm8741_snd_controls_stereo));
  break;
 case 131:
  snd_soc_add_component_controls(component,
    wm8741_snd_controls_mono_left,
    ARRAY_SIZE(wm8741_snd_controls_mono_left));
  break;
 case 130:
  snd_soc_add_component_controls(component,
    wm8741_snd_controls_mono_right,
    ARRAY_SIZE(wm8741_snd_controls_mono_right));
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
