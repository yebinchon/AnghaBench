
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_voice {int use; int pcm; int synth; int midi; int efx; } ;
struct snd_emu10k1 {int next_free_voice; struct snd_emu10k1_voice* voices; } ;






 int ENOMEM ;
 int NUM_G ;

__attribute__((used)) static int voice_alloc(struct snd_emu10k1 *emu, int type, int number,
         struct snd_emu10k1_voice **rvoice)
{
 struct snd_emu10k1_voice *voice;
 int i, j, k, first_voice, last_voice, skip;

 *rvoice = ((void*)0);
 first_voice = last_voice = 0;
 for (i = emu->next_free_voice, j = 0; j < NUM_G ; i += number, j += number) {




  i %= NUM_G;


  if ((number == 2) && (i % 2)) {
   i++;
   continue;
  }

  skip = 0;
  for (k = 0; k < number; k++) {
   voice = &emu->voices[(i+k) % NUM_G];
   if (voice->use) {
    skip = 1;
    break;
   }
  }
  if (!skip) {

   first_voice = i;
   last_voice = (i + number) % NUM_G;
   emu->next_free_voice = last_voice;
   break;
  }
 }

 if (first_voice == last_voice)
  return -ENOMEM;

 for (i = 0; i < number; i++) {
  voice = &emu->voices[(first_voice + i) % NUM_G];




  voice->use = 1;
  switch (type) {
  case 129:
   voice->pcm = 1;
   break;
  case 128:
   voice->synth = 1;
   break;
  case 130:
   voice->midi = 1;
   break;
  case 131:
   voice->efx = 1;
   break;
  }
 }
 *rvoice = &emu->voices[first_voice];
 return 0;
}
