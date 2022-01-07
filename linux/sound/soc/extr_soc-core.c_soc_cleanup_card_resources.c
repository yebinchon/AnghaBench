
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int (* remove ) (struct snd_soc_card*) ;int dapm; int * snd_card; } ;


 int snd_card_free (int *) ;
 int snd_soc_dapm_free (int *) ;
 int soc_cleanup_card_debugfs (struct snd_soc_card*) ;
 int soc_remove_aux_devices (struct snd_soc_card*) ;
 int soc_remove_dai_links (struct snd_soc_card*) ;
 int soc_remove_pcm_runtimes (struct snd_soc_card*) ;
 int soc_unbind_aux_dev (struct snd_soc_card*) ;
 int stub1 (struct snd_soc_card*) ;

__attribute__((used)) static void soc_cleanup_card_resources(struct snd_soc_card *card)
{

 if (card->snd_card) {
  snd_card_free(card->snd_card);
  card->snd_card = ((void*)0);
 }


 soc_remove_dai_links(card);
 soc_remove_pcm_runtimes(card);


 soc_remove_aux_devices(card);
 soc_unbind_aux_dev(card);

 snd_soc_dapm_free(&card->dapm);
 soc_cleanup_card_debugfs(card);


 if (card->remove)
  card->remove(card);
}
