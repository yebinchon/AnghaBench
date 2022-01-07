
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi_channel {int dummy; } ;
struct snd_emux_voice {scalar_t__ state; int key; int velocity; struct snd_midi_channel* chan; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_2__ {int update; } ;
struct snd_emux {int max_voices; int voice_lock; struct snd_emux_voice* voices; TYPE_1__ ops; } ;


 scalar_t__ SNDRV_EMUX_ST_ON ;
 int SNDRV_EMUX_UPDATE_VOLUME ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_voice (struct snd_emux*,struct snd_emux_voice*,int ) ;

void
snd_emux_key_press(void *p, int note, int vel, struct snd_midi_channel *chan)
{
 int ch;
 struct snd_emux *emu;
 struct snd_emux_voice *vp;
 unsigned long flags;
 struct snd_emux_port *port;

 port = p;
 if (snd_BUG_ON(!port || !chan))
  return;

 emu = port->emu;
 if (snd_BUG_ON(!emu || !emu->ops.update))
  return;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (ch = 0; ch < emu->max_voices; ch++) {
  vp = &emu->voices[ch];
  if (vp->state == SNDRV_EMUX_ST_ON &&
      vp->chan == chan && vp->key == note) {
   vp->velocity = vel;
   update_voice(emu, vp, SNDRV_EMUX_UPDATE_VOLUME);
  }
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
