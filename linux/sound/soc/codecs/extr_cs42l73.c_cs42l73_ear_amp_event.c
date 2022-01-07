
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct cs42l73_private {int shutdwn_delay; } ;



 int pr_err (char*,int) ;
 struct cs42l73_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cs42l73_ear_amp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cs42l73_private *priv = snd_soc_component_get_drvdata(component);
 switch (event) {
 case 128:

  if (priv->shutdwn_delay < 50)
   priv->shutdwn_delay = 50;
  break;
 default:
  pr_err("Invalid event = 0x%x\n", event);
 }
 return 0;
}
