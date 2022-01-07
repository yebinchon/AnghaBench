
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; int * build_ops; } ;


 int AC97_AD198X_MSPLT ;
 int AC97_AD_MISC ;
 int AC97_STEREO_MUTES ;
 int check_ad1981_hp_jack_sense (struct snd_ac97*) ;
 int patch_ad1881 (struct snd_ac97*) ;
 int patch_ad1981b_build_ops ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int ) ;

__attribute__((used)) static int patch_ad1981b(struct snd_ac97 *ac97)
{
 patch_ad1881(ac97);
 ac97->build_ops = &patch_ad1981b_build_ops;
 snd_ac97_update_bits(ac97, AC97_AD_MISC, AC97_AD198X_MSPLT, AC97_AD198X_MSPLT);
 ac97->flags |= AC97_STEREO_MUTES;
 check_ad1981_hp_jack_sense(ac97);
 return 0;
}
