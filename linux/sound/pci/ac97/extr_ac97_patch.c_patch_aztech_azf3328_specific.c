
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {void* private_value; } ;
struct snd_ac97 {int dummy; } ;


 int AC97_3D_CONTROL ;
 void* AC97_SINGLE_VALUE (int ,int,int,int ) ;
 struct snd_kcontrol* snd_ac97_find_mixer_ctl (struct snd_ac97*,char*) ;
 int snd_ac97_rename_vol_ctl (struct snd_ac97*,char*,char*) ;

__attribute__((used)) static int patch_aztech_azf3328_specific(struct snd_ac97 *ac97)
{
 struct snd_kcontrol *kctl_3d_center =
  snd_ac97_find_mixer_ctl(ac97, "3D Control - Center");
 struct snd_kcontrol *kctl_3d_depth =
  snd_ac97_find_mixer_ctl(ac97, "3D Control - Depth");





 if (kctl_3d_center) {
  kctl_3d_center->private_value =
   AC97_SINGLE_VALUE(AC97_3D_CONTROL, 1, 0x07, 0);
  snd_ac97_rename_vol_ctl(ac97,
   "3D Control - Center", "3D Control - Width"
  );
 }
 if (kctl_3d_depth)
  kctl_3d_depth->private_value =
   AC97_SINGLE_VALUE(AC97_3D_CONTROL, 8, 0x03, 0);



 snd_ac97_rename_vol_ctl(ac97,
  "Master Mono Playback", "Modem Playback"
 );
 snd_ac97_rename_vol_ctl(ac97,
  "Headphone Playback", "FM Synth Playback"
 );

 return 0;
}
