
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int dapm_mutex; } ;


 scalar_t__ IS_ERR (struct snd_soc_dapm_widget*) ;
 int PTR_ERR (struct snd_soc_dapm_widget*) ;
 int SND_SOC_DAPM_CLASS_INIT ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct snd_soc_dapm_widget* snd_soc_dapm_new_control_unlocked (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget const*) ;

int snd_soc_dapm_new_controls(struct snd_soc_dapm_context *dapm,
 const struct snd_soc_dapm_widget *widget,
 int num)
{
 struct snd_soc_dapm_widget *w;
 int i;
 int ret = 0;

 mutex_lock_nested(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_INIT);
 for (i = 0; i < num; i++) {
  w = snd_soc_dapm_new_control_unlocked(dapm, widget);
  if (IS_ERR(w)) {
   ret = PTR_ERR(w);
   break;
  }
  widget++;
 }
 mutex_unlock(&dapm->card->dapm_mutex);
 return ret;
}
