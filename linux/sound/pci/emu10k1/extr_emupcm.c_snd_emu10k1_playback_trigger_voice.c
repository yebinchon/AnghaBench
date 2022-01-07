
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct snd_emu10k1_voice {unsigned int number; TYPE_2__* epcm; } ;
struct snd_emu10k1 {TYPE_1__* card_capabilities; } ;
struct TYPE_4__ {scalar_t__ type; struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {scalar_t__ emu_model; } ;


 int CPF_CURRENTPITCH ;
 int IP ;
 unsigned int PITCH_48000 ;
 scalar_t__ PLAYBACK_EFX ;
 int PTRX_PITCHTARGET ;
 unsigned int emu10k1_calc_pitch_target (int ) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,unsigned int,unsigned int) ;
 int snd_emu10k1_rate_to_pitch (int ) ;
 int snd_emu10k1_voice_intr_enable (struct snd_emu10k1*,unsigned int) ;

__attribute__((used)) static void snd_emu10k1_playback_trigger_voice(struct snd_emu10k1 *emu, struct snd_emu10k1_voice *evoice, int master, int extra)
{
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
 unsigned int voice, pitch, pitch_target;

 if (evoice == ((void*)0))
  return;
 substream = evoice->epcm->substream;
 runtime = substream->runtime;
 voice = evoice->number;

 pitch = snd_emu10k1_rate_to_pitch(runtime->rate) >> 8;
 if (emu->card_capabilities->emu_model)
  pitch_target = PITCH_48000;
 else
  pitch_target = emu10k1_calc_pitch_target(runtime->rate);
 snd_emu10k1_ptr_write(emu, PTRX_PITCHTARGET, voice, pitch_target);
 if (master || evoice->epcm->type == PLAYBACK_EFX)
  snd_emu10k1_ptr_write(emu, CPF_CURRENTPITCH, voice, pitch_target);
 snd_emu10k1_ptr_write(emu, IP, voice, pitch);
 if (extra)
  snd_emu10k1_voice_intr_enable(emu, voice);
}
