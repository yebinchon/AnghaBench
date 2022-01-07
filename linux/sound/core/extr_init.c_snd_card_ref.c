
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int card_dev; } ;


 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_mutex ;
 struct snd_card** snd_cards ;

struct snd_card *snd_card_ref(int idx)
{
 struct snd_card *card;

 mutex_lock(&snd_card_mutex);
 card = snd_cards[idx];
 if (card)
  get_device(&card->card_dev);
 mutex_unlock(&snd_card_mutex);
 return card;
}
