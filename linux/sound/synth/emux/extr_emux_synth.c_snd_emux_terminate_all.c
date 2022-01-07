
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {scalar_t__ state; scalar_t__ time; } ;
struct TYPE_2__ {int (* reset ) (struct snd_emux*,int) ;int (* free_voice ) (struct snd_emux_voice*) ;} ;
struct snd_emux {int max_voices; int voice_lock; scalar_t__ use_time; TYPE_1__ ops; struct snd_emux_voice* voices; } ;


 scalar_t__ SNDRV_EMUX_ST_OFF ;
 scalar_t__ STATE_IS_PLAYING (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_emux_voice*) ;
 int stub2 (struct snd_emux*,int) ;
 int terminate_voice (struct snd_emux*,struct snd_emux_voice*,int ) ;

void
snd_emux_terminate_all(struct snd_emux *emu)
{
 int i;
 struct snd_emux_voice *vp;
 unsigned long flags;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (i = 0; i < emu->max_voices; i++) {
  vp = &emu->voices[i];
  if (STATE_IS_PLAYING(vp->state))
   terminate_voice(emu, vp, 0);
  if (vp->state == SNDRV_EMUX_ST_OFF) {
   if (emu->ops.free_voice)
    emu->ops.free_voice(vp);
   if (emu->ops.reset)
    emu->ops.reset(emu, i);
  }
  vp->time = 0;
 }

 emu->use_time = 0;
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
