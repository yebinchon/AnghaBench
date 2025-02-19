
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {struct snd_emux_port* port; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_2__ {int update; } ;
struct snd_emux {int max_voices; int voice_lock; struct snd_emux_voice* voices; TYPE_1__ ops; } ;


 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_voice (struct snd_emux*,struct snd_emux_voice*,int) ;

void
snd_emux_update_port(struct snd_emux_port *port, int update)
{
 struct snd_emux *emu;
 struct snd_emux_voice *vp;
 int i;
 unsigned long flags;

 if (! update)
  return;

 emu = port->emu;
 if (snd_BUG_ON(!emu || !emu->ops.update))
  return;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (i = 0; i < emu->max_voices; i++) {
  vp = &emu->voices[i];
  if (vp->port == port)
   update_voice(emu, vp, update);
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
