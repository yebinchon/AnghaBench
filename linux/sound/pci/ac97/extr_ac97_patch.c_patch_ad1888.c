
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lo_as_master; } ;
struct TYPE_3__ {TYPE_2__ ad18xx; } ;
struct snd_ac97 {int subsystem_vendor; int subsystem_device; int flags; TYPE_1__ spec; int * build_ops; } ;


 unsigned short AC97_AD198X_AC97NC ;
 unsigned short AC97_AD198X_HPSEL ;
 unsigned short AC97_AD198X_LOSEL ;
 unsigned short AC97_AD198X_MSPLT ;
 int AC97_AD_MISC ;
 int AC97_STEREO_MUTES ;
 int patch_ad1881 (struct snd_ac97*) ;
 int patch_ad1888_build_ops ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int patch_ad1888(struct snd_ac97 * ac97)
{
 unsigned short misc;

 patch_ad1881(ac97);
 ac97->build_ops = &patch_ad1888_build_ops;





 if (ac97->subsystem_vendor == 0x1043 &&
     ac97->subsystem_device == 0x1193)
  ac97->spec.ad18xx.lo_as_master = 1;

 misc = snd_ac97_read(ac97, AC97_AD_MISC);


 misc |= AC97_AD198X_MSPLT | AC97_AD198X_AC97NC;
 if (!ac97->spec.ad18xx.lo_as_master)




  misc |= AC97_AD198X_LOSEL | AC97_AD198X_HPSEL;

 snd_ac97_write_cache(ac97, AC97_AD_MISC, misc);
 ac97->flags |= AC97_STEREO_MUTES;
 return 0;
}
