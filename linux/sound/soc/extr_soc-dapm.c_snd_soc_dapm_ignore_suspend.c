
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int ignore_suspend; } ;
struct snd_soc_dapm_context {int dev; } ;


 int EINVAL ;
 struct snd_soc_dapm_widget* dapm_find_widget (struct snd_soc_dapm_context*,char const*,int) ;
 int dev_err (int ,char*,char const*) ;

int snd_soc_dapm_ignore_suspend(struct snd_soc_dapm_context *dapm,
    const char *pin)
{
 struct snd_soc_dapm_widget *w = dapm_find_widget(dapm, pin, 0);

 if (!w) {
  dev_err(dapm->dev, "ASoC: unknown pin %s\n", pin);
  return -EINVAL;
 }

 w->ignore_suspend = 1;

 return 0;
}
