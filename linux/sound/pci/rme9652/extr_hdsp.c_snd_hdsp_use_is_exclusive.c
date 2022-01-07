
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {scalar_t__ playback_pid; scalar_t__ capture_pid; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_hdsp_use_is_exclusive(struct hdsp *hdsp)
{
 unsigned long flags;
 int ret = 1;

 spin_lock_irqsave(&hdsp->lock, flags);
 if ((hdsp->playback_pid != hdsp->capture_pid) &&
     (hdsp->playback_pid >= 0) && (hdsp->capture_pid >= 0))
  ret = 0;
 spin_unlock_irqrestore(&hdsp->lock, flags);
 return ret;
}
