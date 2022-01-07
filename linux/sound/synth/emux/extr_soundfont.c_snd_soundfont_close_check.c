
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_list {int open_client; int lock; } ;


 int close_patch (struct snd_sf_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snd_soundfont_close_check(struct snd_sf_list *sflist, int client)
{
 unsigned long flags;
 spin_lock_irqsave(&sflist->lock, flags);
 if (sflist->open_client == client) {
  spin_unlock_irqrestore(&sflist->lock, flags);
  return close_patch(sflist);
 }
 spin_unlock_irqrestore(&sflist->lock, flags);
 return 0;
}
