
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int (* set_bias_level ) (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ;int (* set_bias_level_post ) (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ;struct snd_soc_dapm_context dapm; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int snd_soc_dapm_force_bias_level (struct snd_soc_dapm_context*,int) ;
 int stub1 (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ;
 int stub2 (struct snd_soc_card*,struct snd_soc_dapm_context*,int) ;
 int trace_snd_soc_bias_level_done (struct snd_soc_card*,int) ;
 int trace_snd_soc_bias_level_start (struct snd_soc_card*,int) ;

__attribute__((used)) static int snd_soc_dapm_set_bias_level(struct snd_soc_dapm_context *dapm,
           enum snd_soc_bias_level level)
{
 struct snd_soc_card *card = dapm->card;
 int ret = 0;

 trace_snd_soc_bias_level_start(card, level);

 if (card && card->set_bias_level)
  ret = card->set_bias_level(card, dapm, level);
 if (ret != 0)
  goto out;

 if (!card || dapm != &card->dapm)
  ret = snd_soc_dapm_force_bias_level(dapm, level);

 if (ret != 0)
  goto out;

 if (card && card->set_bias_level_post)
  ret = card->set_bias_level_post(card, dapm, level);
out:
 trace_snd_soc_bias_level_done(card, level);

 return ret;
}
