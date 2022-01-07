
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int instantiated; int list; } ;


 int list_add (int *,int *) ;
 int list_del (int *) ;
 int snd_soc_dapm_shutdown (struct snd_soc_card*) ;
 int snd_soc_flush_all_delayed_work (struct snd_soc_card*) ;
 int soc_cleanup_card_resources (struct snd_soc_card*) ;
 int soc_remove_link_components (struct snd_soc_card*) ;
 int unbind_card_list ;

__attribute__((used)) static void snd_soc_unbind_card(struct snd_soc_card *card, bool unregister)
{
 if (card->instantiated) {
  card->instantiated = 0;
  snd_soc_dapm_shutdown(card);
  snd_soc_flush_all_delayed_work(card);


  soc_remove_link_components(card);

  soc_cleanup_card_resources(card);
  if (!unregister)
   list_add(&card->list, &unbind_card_list);
 } else {
  if (unregister)
   list_del(&card->list);
 }
}
