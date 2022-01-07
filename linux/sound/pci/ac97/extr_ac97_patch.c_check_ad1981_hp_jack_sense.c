
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_AD_JACK_SPDIF ;
 int ad1981_jacks_whitelist ;
 scalar_t__ check_list (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void check_ad1981_hp_jack_sense(struct snd_ac97 *ac97)
{
 if (check_list(ac97, ad1981_jacks_whitelist))

  snd_ac97_update_bits(ac97, AC97_AD_JACK_SPDIF, 1<<11, 1<<11);
}
