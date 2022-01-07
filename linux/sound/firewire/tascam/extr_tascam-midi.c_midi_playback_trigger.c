
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_tscm {int lock; int * out_ports; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_tscm* private_data; } ;


 int snd_fw_async_midi_port_run (int *,struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void midi_playback_trigger(struct snd_rawmidi_substream *substrm, int up)
{
 struct snd_tscm *tscm = substrm->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&tscm->lock, flags);

 if (up)
  snd_fw_async_midi_port_run(&tscm->out_ports[substrm->number],
        substrm);

 spin_unlock_irqrestore(&tscm->lock, flags);
}
