
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ playback_pid; scalar_t__ capture_pid; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_hdspm_use_is_exclusive(struct hdspm *hdspm)
{
 unsigned long flags;
 int ret = 1;

 spin_lock_irqsave(&hdspm->lock, flags);
 if ((hdspm->playback_pid != hdspm->capture_pid) &&
     (hdspm->playback_pid >= 0) && (hdspm->capture_pid >= 0)) {
  ret = 0;
 }
 spin_unlock_irqrestore(&hdspm->lock, flags);
 return ret;
}
