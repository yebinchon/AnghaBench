
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* chained; unsigned short* id; unsigned short* codec_cfg; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {TYPE_2__ spec; } ;


 int AC97_AD_CODEC_CFG ;
 int AC97_AD_SERIAL_CFG ;
 int AC97_VENDOR_ID2 ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,unsigned short) ;

__attribute__((used)) static int patch_ad1881_chained1(struct snd_ac97 * ac97, int idx, unsigned short codec_bits)
{
 static int cfg_bits[3] = { 1<<12, 1<<14, 1<<13 };
 unsigned short val;

 snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x7000, cfg_bits[idx]);
 snd_ac97_write_cache(ac97, AC97_AD_CODEC_CFG, 0x0004);
 val = snd_ac97_read(ac97, AC97_VENDOR_ID2);
 if ((val & 0xff40) != 0x5340)
  return 0;
 if (codec_bits)
  snd_ac97_write_cache(ac97, AC97_AD_CODEC_CFG, codec_bits);
 ac97->spec.ad18xx.chained[idx] = cfg_bits[idx];
 ac97->spec.ad18xx.id[idx] = val;
 ac97->spec.ad18xx.codec_cfg[idx] = codec_bits ? codec_bits : 0x0004;
 return 1;
}
