
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_ALC850_JACK_SELECT ;
 int AC97_ALC850_MISC1 ;
 int AC97_ALC850_MULTICH ;
 int alc850_is_aux_back_surround (struct snd_ac97*) ;
 int is_shared_clfeout (struct snd_ac97*) ;
 int is_shared_surrout (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void alc850_update_jacks(struct snd_ac97 *ac97)
{
 int shared;
 int aux_is_back_surround;


 shared = is_shared_surrout(ac97);

 snd_ac97_update_bits(ac97, AC97_ALC850_MISC1, (1<<4)|(1<<5),
        shared ? (1<<5) : (1<<4));

 snd_ac97_update_bits(ac97, AC97_ALC850_JACK_SELECT, 7 << 12,
        shared ? (2<<12) : (0<<12));

 shared = is_shared_clfeout(ac97);

 snd_ac97_update_bits(ac97, AC97_ALC850_MISC1, (1<<12)|(1<<13),
        shared ? (1<<12) : (1<<13));

 snd_ac97_update_bits(ac97, AC97_ALC850_JACK_SELECT, 7 << 4,
        shared ? (5<<4) : (1<<4));

 aux_is_back_surround = alc850_is_aux_back_surround(ac97);

 snd_ac97_update_bits(ac97, AC97_ALC850_MULTICH, 1 << 10,
     aux_is_back_surround ? (1<<10) : (0<<10));
}
