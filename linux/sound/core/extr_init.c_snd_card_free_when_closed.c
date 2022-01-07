
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int card_dev; } ;


 int put_device (int *) ;
 int snd_card_disconnect (struct snd_card*) ;

int snd_card_free_when_closed(struct snd_card *card)
{
 int ret = snd_card_disconnect(card);
 if (ret)
  return ret;
 put_device(&card->card_dev);
 return 0;
}
