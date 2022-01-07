
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int ext_id; int flags; int * build_ops; } ;


 unsigned short AC97_AD198X_AC97NC ;
 unsigned short AC97_AD198X_HPSEL ;
 unsigned short AC97_AD198X_LOSEL ;
 unsigned short AC97_AD198X_MSPLT ;
 int AC97_AD_MISC ;
 int AC97_EI_REV_23 ;
 int AC97_EI_REV_MASK ;
 int AC97_STEREO_MUTES ;
 int ad1985_update_jacks (struct snd_ac97*) ;
 int patch_ad1881 (struct snd_ac97*) ;
 int patch_ad1985_build_ops ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int patch_ad1985(struct snd_ac97 * ac97)
{
 unsigned short misc;

 patch_ad1881(ac97);
 ac97->build_ops = &patch_ad1985_build_ops;
 misc = snd_ac97_read(ac97, AC97_AD_MISC);



 snd_ac97_write_cache(ac97, AC97_AD_MISC, misc |
        AC97_AD198X_LOSEL |
        AC97_AD198X_HPSEL |
        AC97_AD198X_MSPLT |
        AC97_AD198X_AC97NC);
 ac97->flags |= AC97_STEREO_MUTES;


 ad1985_update_jacks(ac97);


 ac97->ext_id = (ac97->ext_id & ~AC97_EI_REV_MASK) | AC97_EI_REV_23;
 return 0;
}
