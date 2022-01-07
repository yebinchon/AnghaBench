
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_emu10k1* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_emu10k1_voice {int midi; int synth; int efx; int pcm; int use; } ;
struct snd_emu10k1 {struct snd_emu10k1_voice* voices; } ;


 int NUM_G ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_emu10k1_proc_voices_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 struct snd_emu10k1 *emu = entry->private_data;
 struct snd_emu10k1_voice *voice;
 int idx;

 snd_iprintf(buffer, "ch\tuse\tpcm\tefx\tsynth\tmidi\n");
 for (idx = 0; idx < NUM_G; idx++) {
  voice = &emu->voices[idx];
  snd_iprintf(buffer, "%i\t%i\t%i\t%i\t%i\t%i\n",
   idx,
   voice->use,
   voice->pcm,
   voice->efx,
   voice->synth,
   voice->midi);
 }
}
