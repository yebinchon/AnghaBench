
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int snd_ac97_ad1985_controls ;
 int * snd_ac97_ad1986_controls ;
 int snd_ac97_ad198x_2cmic ;

__attribute__((used)) static int patch_ad1986_specific(struct snd_ac97 *ac97)
{
 int err;

 if ((err = patch_build_controls(ac97, &snd_ac97_ad198x_2cmic, 1)) < 0)
  return err;

 return patch_build_controls(ac97, snd_ac97_ad1986_controls,
        ARRAY_SIZE(snd_ac97_ad1985_controls));
}
