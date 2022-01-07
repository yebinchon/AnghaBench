
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_YMF7X3_DIT_CTRL ;
 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int * snd_ac97_controls_spdif ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;
 int * snd_ac97_yamaha_ymf743_controls_spdif ;

__attribute__((used)) static int patch_yamaha_ymf743_build_spdif(struct snd_ac97 *ac97)
{
 int err;

 err = patch_build_controls(ac97, &snd_ac97_controls_spdif[0], 3);
 if (err < 0)
  return err;
 err = patch_build_controls(ac97,
       snd_ac97_yamaha_ymf743_controls_spdif, 3);
 if (err < 0)
  return err;


 snd_ac97_write_cache(ac97, AC97_YMF7X3_DIT_CTRL, 0xa201);
 return 0;
}
