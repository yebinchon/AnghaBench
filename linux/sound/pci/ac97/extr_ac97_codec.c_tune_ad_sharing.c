
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int id; } ;


 int AC97_AD_SERIAL_CFG ;
 int EINVAL ;
 int ac97_err (struct snd_ac97*,char*) ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int tune_ad_sharing(struct snd_ac97 *ac97)
{
 unsigned short scfg;
 if ((ac97->id & 0xffffff00) != 0x41445300) {
  ac97_err(ac97, "ac97_quirk AD_SHARING is only for AD codecs\n");
  return -EINVAL;
 }

 scfg = snd_ac97_read(ac97, AC97_AD_SERIAL_CFG);
 snd_ac97_write_cache(ac97, AC97_AD_SERIAL_CFG, scfg | 0x0200);
 return 0;
}
