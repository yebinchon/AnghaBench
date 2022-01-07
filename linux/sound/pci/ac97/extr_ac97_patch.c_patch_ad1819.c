
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int res_table; } ;


 int AC97_AD_SERIAL_CFG ;
 int ad1819_restbl ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int patch_ad1819(struct snd_ac97 * ac97)
{
 unsigned short scfg;


 scfg = snd_ac97_read(ac97, AC97_AD_SERIAL_CFG);
 snd_ac97_write_cache(ac97, AC97_AD_SERIAL_CFG, scfg | 0x7000);
 ac97->res_table = ad1819_restbl;
 return 0;
}
