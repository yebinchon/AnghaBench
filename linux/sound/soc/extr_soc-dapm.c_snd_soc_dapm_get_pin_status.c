
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int connected; } ;
struct snd_soc_dapm_context {int dummy; } ;


 struct snd_soc_dapm_widget* dapm_find_widget (struct snd_soc_dapm_context*,char const*,int) ;

int snd_soc_dapm_get_pin_status(struct snd_soc_dapm_context *dapm,
    const char *pin)
{
 struct snd_soc_dapm_widget *w = dapm_find_widget(dapm, pin, 1);

 if (w)
  return w->connected;

 return 0;
}
