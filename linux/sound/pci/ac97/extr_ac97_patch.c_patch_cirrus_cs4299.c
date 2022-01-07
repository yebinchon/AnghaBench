
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; } ;


 int AC97_HAS_PC_BEEP ;
 int patch_cirrus_spdif (struct snd_ac97*) ;

__attribute__((used)) static int patch_cirrus_cs4299(struct snd_ac97 * ac97)
{

 ac97->flags |= AC97_HAS_PC_BEEP;

 return patch_cirrus_spdif(ac97);
}
