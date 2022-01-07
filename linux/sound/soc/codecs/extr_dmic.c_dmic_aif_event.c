
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct dmic {int gpio_en; int wakeup_delay; } ;




 int gpiod_set_value (int ,int) ;
 int msleep (int ) ;
 struct dmic* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int dmic_aif_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event) {
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct dmic *dmic = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (dmic->gpio_en)
   gpiod_set_value(dmic->gpio_en, 1);

  if (dmic->wakeup_delay)
   msleep(dmic->wakeup_delay);
  break;
 case 129:
  if (dmic->gpio_en)
   gpiod_set_value(dmic->gpio_en, 0);
  break;
 }

 return 0;
}
