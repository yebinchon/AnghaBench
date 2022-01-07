
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct snd_emux_voice {scalar_t__ state; scalar_t__ ontime; } ;
struct TYPE_2__ {int (* release ) (struct snd_emux_voice*) ;} ;
struct snd_emux {int max_voices; int timer_active; int voice_lock; int tlist; TYPE_1__ ops; struct snd_emux_voice* voices; } ;


 scalar_t__ SNDRV_EMUX_ST_PENDING ;
 scalar_t__ SNDRV_EMUX_ST_RELEASED ;
 struct snd_emux* emu ;
 struct snd_emux* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_emux_voice*) ;
 int tlist ;

void snd_emux_timer_callback(struct timer_list *t)
{
 struct snd_emux *emu = from_timer(emu, t, tlist);
 struct snd_emux_voice *vp;
 unsigned long flags;
 int ch, do_again = 0;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (ch = 0; ch < emu->max_voices; ch++) {
  vp = &emu->voices[ch];
  if (vp->state == SNDRV_EMUX_ST_PENDING) {
   if (vp->ontime == jiffies)
    do_again++;
   else {
    emu->ops.release(vp);
    vp->state = SNDRV_EMUX_ST_RELEASED;
   }
  }
 }
 if (do_again) {
  mod_timer(&emu->tlist, jiffies + 1);
  emu->timer_active = 1;
 } else
  emu->timer_active = 0;
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
