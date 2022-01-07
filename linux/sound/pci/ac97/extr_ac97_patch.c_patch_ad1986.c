
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; int * build_ops; } ;


 int AC97_STEREO_MUTES ;
 int ad1986_update_jacks (struct snd_ac97*) ;
 int patch_ad1881 (struct snd_ac97*) ;
 int patch_ad1986_build_ops ;

__attribute__((used)) static int patch_ad1986(struct snd_ac97 * ac97)
{
 patch_ad1881(ac97);
 ac97->build_ops = &patch_ad1986_build_ops;
 ac97->flags |= AC97_STEREO_MUTES;


 ad1986_update_jacks(ac97);

 return 0;
}
