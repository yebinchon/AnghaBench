
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned short* unchained; unsigned short* id; int* codec_cfg; } ;
struct TYPE_3__ {TYPE_2__ ad18xx; } ;
struct snd_ac97 {TYPE_1__ spec; } ;


 int AC97_AD_CODEC_CFG ;
 int AC97_AD_SERIAL_CFG ;
 int AC97_VENDOR_ID2 ;
 unsigned short snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,unsigned short) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static unsigned short patch_ad1881_unchained(struct snd_ac97 * ac97, int idx, unsigned short mask)
{
 unsigned short val;


 snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x7000, mask);
 snd_ac97_write_cache(ac97, AC97_AD_CODEC_CFG, 0x0000);
 val = snd_ac97_read(ac97, AC97_VENDOR_ID2);
 if ((val & 0xff40) != 0x5340)
  return 0;
 ac97->spec.ad18xx.unchained[idx] = mask;
 ac97->spec.ad18xx.id[idx] = val;
 ac97->spec.ad18xx.codec_cfg[idx] = 0x0000;
 return mask;
}
