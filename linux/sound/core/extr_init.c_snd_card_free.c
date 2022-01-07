
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct completion* release_completion; } ;
struct completion {int dummy; } ;


 int init_completion (struct completion*) ;
 int snd_card_free_when_closed (struct snd_card*) ;
 int wait_for_completion (struct completion*) ;

int snd_card_free(struct snd_card *card)
{
 struct completion released;
 int ret;

 init_completion(&released);
 card->release_completion = &released;
 ret = snd_card_free_when_closed(card);
 if (ret)
  return ret;

 wait_for_completion(&released);
 return 0;
}
