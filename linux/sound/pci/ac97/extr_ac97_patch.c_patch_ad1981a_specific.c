
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ad1981_jacks_blacklist ;
 scalar_t__ check_list (struct snd_ac97*,int ) ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int snd_ac97_ad1981x_jack_sense ;

__attribute__((used)) static int patch_ad1981a_specific(struct snd_ac97 * ac97)
{
 if (check_list(ac97, ad1981_jacks_blacklist))
  return 0;
 return patch_build_controls(ac97, snd_ac97_ad1981x_jack_sense,
        ARRAY_SIZE(snd_ac97_ad1981x_jack_sense));
}
