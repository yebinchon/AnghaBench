
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ playback_pid; scalar_t__ capture_pid; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int snd_rme9652_use_is_exclusive(struct snd_rme9652 *rme9652)
{
 unsigned long flags;
 int ret = 1;

 spin_lock_irqsave(&rme9652->lock, flags);
 if ((rme9652->playback_pid != rme9652->capture_pid) &&
     (rme9652->playback_pid >= 0) && (rme9652->capture_pid >= 0)) {
  ret = 0;
 }
 spin_unlock_irqrestore(&rme9652->lock, flags);
 return ret;
}
