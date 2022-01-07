
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int voice_lock; } ;
struct snd_midi_channel {int dummy; } ;


 int snd_opl3_note_off_unsafe (void*,int,int,struct snd_midi_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_opl3_note_off(void *p, int note, int vel,
         struct snd_midi_channel *chan)
{
 struct snd_opl3 *opl3 = p;
 unsigned long flags;

 spin_lock_irqsave(&opl3->voice_lock, flags);
 snd_opl3_note_off_unsafe(p, note, vel, chan);
 spin_unlock_irqrestore(&opl3->voice_lock, flags);
}
