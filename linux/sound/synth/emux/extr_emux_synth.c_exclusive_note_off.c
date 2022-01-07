
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exclusiveClass; } ;
struct snd_emux_voice {TYPE_1__ reg; struct snd_emux_port* port; int state; } ;
struct snd_emux_port {int dummy; } ;
struct snd_emux {int max_voices; int voice_lock; struct snd_emux_voice* voices; } ;


 scalar_t__ STATE_IS_PLAYING (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int terminate_voice (struct snd_emux*,struct snd_emux_voice*,int ) ;

__attribute__((used)) static void
exclusive_note_off(struct snd_emux *emu, struct snd_emux_port *port, int exclass)
{
 struct snd_emux_voice *vp;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (i = 0; i < emu->max_voices; i++) {
  vp = &emu->voices[i];
  if (STATE_IS_PLAYING(vp->state) && vp->port == port &&
      vp->reg.exclusiveClass == exclass) {
   terminate_voice(emu, vp, 0);
  }
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
