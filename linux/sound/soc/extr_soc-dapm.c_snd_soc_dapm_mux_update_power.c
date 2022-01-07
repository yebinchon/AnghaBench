
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_enum {int dummy; } ;
struct snd_soc_dapm_update {int dummy; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dapm_mutex; struct snd_soc_dapm_update* update; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int soc_dapm_mux_update_power (struct snd_soc_card*,struct snd_kcontrol*,int,struct soc_enum*) ;
 int soc_dpcm_runtime_update (struct snd_soc_card*) ;

int snd_soc_dapm_mux_update_power(struct snd_soc_dapm_context *dapm,
 struct snd_kcontrol *kcontrol, int mux, struct soc_enum *e,
 struct snd_soc_dapm_update *update)
{
 struct snd_soc_card *card = dapm->card;
 int ret;

 mutex_lock_nested(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
 card->update = update;
 ret = soc_dapm_mux_update_power(card, kcontrol, mux, e);
 card->update = ((void*)0);
 mutex_unlock(&card->dapm_mutex);
 if (ret > 0)
  soc_dpcm_runtime_update(card);
 return ret;
}
