
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct simple_amp {int gpiod_enable; } ;


 int EINVAL ;


 int WARN (int,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct simple_amp* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int drv_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *control, int event)
{
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct simple_amp *priv = snd_soc_component_get_drvdata(c);
 int val;

 switch (event) {
 case 129:
  val = 1;
  break;
 case 128:
  val = 0;
  break;
 default:
  WARN(1, "Unexpected event");
  return -EINVAL;
 }

 gpiod_set_value_cansleep(priv->gpiod_enable, val);

 return 0;
}
