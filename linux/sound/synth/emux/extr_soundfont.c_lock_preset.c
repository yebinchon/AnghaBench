
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_list {int presets_locked; int lock; int presets_mutex; } ;


 int mutex_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lock_preset(struct snd_sf_list *sflist)
{
 unsigned long flags;
 mutex_lock(&sflist->presets_mutex);
 spin_lock_irqsave(&sflist->lock, flags);
 sflist->presets_locked = 1;
 spin_unlock_irqrestore(&sflist->lock, flags);
}
