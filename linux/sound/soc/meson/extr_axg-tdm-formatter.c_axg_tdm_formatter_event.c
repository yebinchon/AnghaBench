
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct axg_tdm_formatter {int dummy; } ;


 int EINVAL ;


 int axg_tdm_formatter_power_down (struct axg_tdm_formatter*) ;
 int axg_tdm_formatter_power_up (struct axg_tdm_formatter*,struct snd_soc_dapm_widget*) ;
 int dev_err (int ,char*,int) ;
 struct axg_tdm_formatter* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int axg_tdm_formatter_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *control,
       int event)
{
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct axg_tdm_formatter *formatter = snd_soc_component_get_drvdata(c);
 int ret = 0;

 switch (event) {
 case 128:
  ret = axg_tdm_formatter_power_up(formatter, w);
  break;

 case 129:
  axg_tdm_formatter_power_down(formatter);
  break;

 default:
  dev_err(c->dev, "Unexpected event %d\n", event);
  return -EINVAL;
 }

 return ret;
}
