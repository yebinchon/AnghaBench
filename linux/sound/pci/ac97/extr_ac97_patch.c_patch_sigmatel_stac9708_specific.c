
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int patch_build_controls (struct snd_ac97*,int *,int) ;
 int patch_sigmatel_stac97xx_specific (struct snd_ac97*) ;
 int snd_ac97_remove_ctl (struct snd_ac97*,char*,int *) ;
 int snd_ac97_rename_vol_ctl (struct snd_ac97*,char*,char*) ;
 int snd_ac97_stac9708_bias_control ;

__attribute__((used)) static int patch_sigmatel_stac9708_specific(struct snd_ac97 *ac97)
{
 int err;


 snd_ac97_remove_ctl(ac97, "PCM Out Path & Mute", ((void*)0));

 snd_ac97_rename_vol_ctl(ac97, "Headphone Playback", "Sigmatel Surround Playback");
 if ((err = patch_build_controls(ac97, &snd_ac97_stac9708_bias_control, 1)) < 0)
  return err;
 return patch_sigmatel_stac97xx_specific(ac97);
}
