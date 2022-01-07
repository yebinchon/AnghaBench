
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int* out_ena; } ;
struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm5100_out_ev(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol,
    int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);

 switch (w->reg) {
 case 129:
  wm5100->out_ena[0] = 1;
  break;
 case 128:
  wm5100->out_ena[0] = 1;
  break;
 default:
  break;
 }

 return 0;
}
