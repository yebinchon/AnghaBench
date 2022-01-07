
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3_voice {scalar_t__ state; struct snd_midi_channel* chan; } ;
struct snd_opl3 {scalar_t__ synth_mode; int max_voices; int voice_lock; struct snd_opl3_voice* voices; } ;
struct snd_midi_channel {size_t number; } ;


 size_t MAX_OPL3_VOICES ;
 scalar_t__ SNDRV_OPL3_MODE_SEQ ;
 int* snd_opl3_oss_map ;
 int snd_opl3_update_pitch (struct snd_opl3*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_opl3_pitch_ctrl(struct snd_opl3 *opl3, struct snd_midi_channel *chan)
{
 int voice;
 struct snd_opl3_voice *vp;

 unsigned long flags;

 spin_lock_irqsave(&opl3->voice_lock, flags);

 if (opl3->synth_mode == SNDRV_OPL3_MODE_SEQ) {
  for (voice = 0; voice < opl3->max_voices; voice++) {
   vp = &opl3->voices[voice];
   if (vp->state > 0 && vp->chan == chan) {
    snd_opl3_update_pitch(opl3, voice);
   }
  }
 } else {

  if (chan->number < MAX_OPL3_VOICES) {
   voice = snd_opl3_oss_map[chan->number];
   snd_opl3_update_pitch(opl3, voice);
  }
 }
 spin_unlock_irqrestore(&opl3->voice_lock, flags);
}
