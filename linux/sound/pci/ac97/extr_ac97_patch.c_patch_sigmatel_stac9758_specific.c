
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int patch_sigmatel_stac97xx_specific (struct snd_ac97*) ;
 int snd_ac97_rename_vol_ctl (struct snd_ac97*,char*,char*) ;
 int snd_ac97_sigmatel_stac9758_controls ;

__attribute__((used)) static int patch_sigmatel_stac9758_specific(struct snd_ac97 *ac97)
{
 int err;

 err = patch_sigmatel_stac97xx_specific(ac97);
 if (err < 0)
  return err;
 err = patch_build_controls(ac97, snd_ac97_sigmatel_stac9758_controls,
       ARRAY_SIZE(snd_ac97_sigmatel_stac9758_controls));
 if (err < 0)
  return err;

 snd_ac97_rename_vol_ctl(ac97, "Headphone Playback", "Front Playback");



 snd_ac97_rename_vol_ctl(ac97, "Video Playback", "Surround Mix Playback");


 return 0;
}
