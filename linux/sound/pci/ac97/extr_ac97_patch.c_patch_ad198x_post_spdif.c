
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int snd_ac97_ad198x_spdif_source ;

__attribute__((used)) static int patch_ad198x_post_spdif(struct snd_ac97 * ac97)
{
  return patch_build_controls(ac97, &snd_ac97_ad198x_spdif_source, 1);
}
