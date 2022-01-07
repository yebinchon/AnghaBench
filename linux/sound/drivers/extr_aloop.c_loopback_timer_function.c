
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct loopback_pcm {TYPE_2__* cable; TYPE_1__* substream; scalar_t__ period_update_pending; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int stream; } ;


 struct loopback_pcm* dpcm ;
 struct loopback_pcm* from_timer (int ,struct timer_list*,int ) ;
 int loopback_pos_update (TYPE_2__*) ;
 int loopback_timer_start (struct loopback_pcm*) ;
 int snd_pcm_period_elapsed (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void loopback_timer_function(struct timer_list *t)
{
 struct loopback_pcm *dpcm = from_timer(dpcm, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&dpcm->cable->lock, flags);
 if (loopback_pos_update(dpcm->cable) & (1 << dpcm->substream->stream)) {
  loopback_timer_start(dpcm);
  if (dpcm->period_update_pending) {
   dpcm->period_update_pending = 0;
   spin_unlock_irqrestore(&dpcm->cable->lock, flags);

   snd_pcm_period_elapsed(dpcm->substream);
   return;
  }
 }
 spin_unlock_irqrestore(&dpcm->cable->lock, flags);
}
