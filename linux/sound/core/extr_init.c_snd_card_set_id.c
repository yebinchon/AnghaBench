
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {char* id; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_mutex ;
 int snd_card_set_id_no_lock (struct snd_card*,char const*,char const*) ;

void snd_card_set_id(struct snd_card *card, const char *nid)
{

 if (card->id[0] != '\0')
  return;
 mutex_lock(&snd_card_mutex);
 snd_card_set_id_no_lock(card, nid, nid);
 mutex_unlock(&snd_card_mutex);
}
