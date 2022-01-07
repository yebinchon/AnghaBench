
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_SLOT_MIC ;
 int AC97_SLOT_PCM_LEFT ;
 int AC97_SLOT_PCM_RIGHT ;
 int ac97_is_audio (struct snd_ac97*) ;

__attribute__((used)) static unsigned short get_cslots(struct snd_ac97 *ac97)
{
 unsigned short slots;

 if (!ac97_is_audio(ac97))
  return 0;
 slots = (1<<AC97_SLOT_PCM_LEFT)|(1<<AC97_SLOT_PCM_RIGHT);
 slots |= (1<<AC97_SLOT_MIC);
 return slots;
}
