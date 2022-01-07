
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int flags; int scaps; int * build_ops; } ;


 int AC97_EXTENDED_MID ;
 int AC97_EXTENDED_MSTATUS ;
 int AC97_HAS_NO_CD ;
 int AC97_HAS_NO_PC_BEEP ;
 int AC97_HAS_NO_PHONE ;
 int AC97_HAS_NO_REC_GAIN ;
 int AC97_HAS_NO_STD_PCM ;
 int AC97_HAS_NO_TONE ;
 int AC97_HAS_NO_VIDEO ;
 int AC97_POWERDOWN ;
 int AC97_SCAP_MODEM ;
 int AC97_STEREO_MUTES ;
 int patch_wolfson_wm9713_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_wolfson13(struct snd_ac97 * ac97)
{

 ac97->build_ops = &patch_wolfson_wm9713_ops;

 ac97->flags |= AC97_HAS_NO_REC_GAIN | AC97_STEREO_MUTES | AC97_HAS_NO_PHONE |
  AC97_HAS_NO_PC_BEEP | AC97_HAS_NO_VIDEO | AC97_HAS_NO_CD | AC97_HAS_NO_TONE |
  AC97_HAS_NO_STD_PCM;
     ac97->scaps &= ~AC97_SCAP_MODEM;

 snd_ac97_write_cache(ac97, AC97_EXTENDED_MID, 0xda00);
 snd_ac97_write_cache(ac97, AC97_EXTENDED_MSTATUS, 0x3810);
 snd_ac97_write_cache(ac97, AC97_POWERDOWN, 0x0);

 return 0;
}
