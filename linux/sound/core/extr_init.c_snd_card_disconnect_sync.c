
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int files_lock; int files_list; int remove_sleep; int dev; } ;


 int dev_err (int ,char*,int) ;
 int list_empty (int *) ;
 int snd_card_disconnect (struct snd_card*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_event_lock_irq (int ,int ,int ) ;

void snd_card_disconnect_sync(struct snd_card *card)
{
 int err;

 err = snd_card_disconnect(card);
 if (err < 0) {
  dev_err(card->dev,
   "snd_card_disconnect error (%d), skipping sync\n",
   err);
  return;
 }

 spin_lock_irq(&card->files_lock);
 wait_event_lock_irq(card->remove_sleep,
       list_empty(&card->files_list),
       card->files_lock);
 spin_unlock_irq(&card->files_lock);
}
