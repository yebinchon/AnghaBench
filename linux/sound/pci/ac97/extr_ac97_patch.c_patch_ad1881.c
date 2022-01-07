
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* id; int* codec_cfg; scalar_t__* unchained; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {int id; int * build_ops; TYPE_2__ spec; void* ext_id; int scaps; int flags; } ;


 int AC97_AD_CODEC_CFG ;
 int AC97_AD_MULTI ;
 int AC97_AD_SERIAL_CFG ;
 int AC97_EXTENDED_ID ;
 int AC97_SCAP_CENTER_LFE_DAC ;
 int AC97_SCAP_SURROUND_DAC ;
 int patch_ad1881_build_ops ;
 int patch_ad1881_chained (struct snd_ac97*,int,char const,char const) ;
 unsigned short patch_ad1881_unchained (struct snd_ac97*,int,int) ;
 void* snd_ac97_read (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;
 int snd_ac97_write_cache (struct snd_ac97*,int ,int) ;

__attribute__((used)) static int patch_ad1881(struct snd_ac97 * ac97)
{
 static const char cfg_idxs[3][2] = {
  {2, 1},
  {0, 2},
  {0, 1}
 };


 unsigned short codecs[3];
 unsigned short val;
 int idx, num;

 val = snd_ac97_read(ac97, AC97_AD_SERIAL_CFG);
 snd_ac97_write_cache(ac97, AC97_AD_SERIAL_CFG, val);
 codecs[0] = patch_ad1881_unchained(ac97, 0, (1<<12));
 codecs[1] = patch_ad1881_unchained(ac97, 1, (1<<14));
 codecs[2] = patch_ad1881_unchained(ac97, 2, (1<<13));

 if (! (codecs[0] || codecs[1] || codecs[2]))
  goto __end;

 for (idx = 0; idx < 3; idx++)
  if (ac97->spec.ad18xx.unchained[idx])
   patch_ad1881_chained(ac97, idx, cfg_idxs[idx][0], cfg_idxs[idx][1]);

 if (ac97->spec.ad18xx.id[1]) {
  ac97->flags |= AC97_AD_MULTI;
  ac97->scaps |= AC97_SCAP_SURROUND_DAC;
 }
 if (ac97->spec.ad18xx.id[2]) {
  ac97->flags |= AC97_AD_MULTI;
  ac97->scaps |= AC97_SCAP_CENTER_LFE_DAC;
 }

      __end:

 snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x7000, 0x7000);

 for (idx = num = 0; idx < 3; idx++)
  if (ac97->spec.ad18xx.id[idx])
   num++;
 if (num == 1) {

  snd_ac97_write_cache(ac97, AC97_AD_CODEC_CFG, 0x0000);
  ac97->spec.ad18xx.codec_cfg[0] =
   ac97->spec.ad18xx.codec_cfg[1] =
   ac97->spec.ad18xx.codec_cfg[2] = 0x0000;
 }

 ac97->ext_id = snd_ac97_read(ac97, AC97_EXTENDED_ID);
 if (ac97->spec.ad18xx.id[0]) {
  ac97->id &= 0xffff0000;
  ac97->id |= ac97->spec.ad18xx.id[0];
 }
 ac97->build_ops = &patch_ad1881_build_ops;
 return 0;
}
