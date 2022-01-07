
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm_mixer {int dummy; } ;
struct snd_emu10k1_pcm {int running; int extra; int * voices; } ;
struct snd_emu10k1 {int reg_lock; struct snd_emu10k1_pcm_mixer* pcm_mixer; } ;


 int EINVAL ;






 int snd_emu10k1_playback_invalidate_cache (struct snd_emu10k1*,int,int ) ;
 int snd_emu10k1_playback_mangle_extra (struct snd_emu10k1*,struct snd_emu10k1_pcm*,struct snd_pcm_substream*,struct snd_pcm_runtime*) ;
 int snd_emu10k1_playback_prepare_voice (struct snd_emu10k1*,int ,int,int,struct snd_emu10k1_pcm_mixer*) ;
 int snd_emu10k1_playback_stop_voice (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_playback_trigger_voice (struct snd_emu10k1*,int ,int,int) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_emu10k1_playback_trigger(struct snd_pcm_substream *substream,
            int cmd)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 struct snd_emu10k1_pcm_mixer *mix;
 int result = 0;






 spin_lock(&emu->reg_lock);
 switch (cmd) {
 case 130:
  snd_emu10k1_playback_invalidate_cache(emu, 1, epcm->extra);
  snd_emu10k1_playback_invalidate_cache(emu, 0, epcm->voices[0]);

 case 132:
 case 131:
  if (cmd == 132)
   snd_emu10k1_playback_mangle_extra(emu, epcm, substream, runtime);
  mix = &emu->pcm_mixer[substream->number];
  snd_emu10k1_playback_prepare_voice(emu, epcm->voices[0], 1, 0, mix);
  snd_emu10k1_playback_prepare_voice(emu, epcm->voices[1], 0, 0, mix);
  snd_emu10k1_playback_prepare_voice(emu, epcm->extra, 1, 1, ((void*)0));
  snd_emu10k1_playback_trigger_voice(emu, epcm->voices[0], 1, 0);
  snd_emu10k1_playback_trigger_voice(emu, epcm->voices[1], 0, 0);
  snd_emu10k1_playback_trigger_voice(emu, epcm->extra, 1, 1);
  epcm->running = 1;
  break;
 case 129:
 case 133:
 case 128:
  epcm->running = 0;
  snd_emu10k1_playback_stop_voice(emu, epcm->voices[0]);
  snd_emu10k1_playback_stop_voice(emu, epcm->voices[1]);
  snd_emu10k1_playback_stop_voice(emu, epcm->extra);
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&emu->reg_lock);
 return result;
}
