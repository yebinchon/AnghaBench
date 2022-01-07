
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int snd_ac97_controls_it2646 ;
 int snd_ac97_spdif_controls_it2646 ;

__attribute__((used)) static int patch_it2646_specific(struct snd_ac97 * ac97)
{
 int err;
 if ((err = patch_build_controls(ac97, snd_ac97_controls_it2646, ARRAY_SIZE(snd_ac97_controls_it2646))) < 0)
  return err;
 if ((err = patch_build_controls(ac97, snd_ac97_spdif_controls_it2646, ARRAY_SIZE(snd_ac97_spdif_controls_it2646))) < 0)
  return err;
 return 0;
}
