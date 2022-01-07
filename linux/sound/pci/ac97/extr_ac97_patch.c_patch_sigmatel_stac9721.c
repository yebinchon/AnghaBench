
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int AC97_SIGMATEL_ANALOG ;
 int AC97_SIGMATEL_BIAS1 ;
 int AC97_SIGMATEL_BIAS2 ;
 int AC97_SIGMATEL_CIC1 ;
 int AC97_SIGMATEL_CIC2 ;
 int AC97_SIGMATEL_MULTICHN ;
 int patch_sigmatel_stac9700_ops ;
 scalar_t__ snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_sigmatel_stac9721(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_sigmatel_stac9700_ops;
 if (snd_ac97_read(ac97, AC97_SIGMATEL_ANALOG) == 0) {

  snd_ac97_write_cache(ac97, AC97_SIGMATEL_CIC1, 0xabba);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_CIC2, 0x4000);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_BIAS1, 0xabba);
  snd_ac97_write_cache(ac97, AC97_SIGMATEL_BIAS2, 0x0002);
 }
 snd_ac97_write_cache(ac97, AC97_SIGMATEL_MULTICHN, 0x0000);
 return 0;
}
