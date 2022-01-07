
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regmap; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef int hda_nid_t ;


 int EINVAL ;
 int regcache_cache_only (int ,int) ;
 int snd_hda_codec_amp_read (struct hda_codec*,int ,int,int,int) ;
 int snd_hda_codec_amp_update (struct hda_codec*,int ,int,int,int,int,int) ;

int snd_hda_codec_amp_init(struct hda_codec *codec, hda_nid_t nid, int ch,
      int dir, int idx, int mask, int val)
{
 int orig;

 if (!codec->core.regmap)
  return -EINVAL;
 regcache_cache_only(codec->core.regmap, 1);
 orig = snd_hda_codec_amp_read(codec, nid, ch, dir, idx);
 regcache_cache_only(codec->core.regmap, 0);
 if (orig >= 0)
  return 0;
 return snd_hda_codec_amp_update(codec, nid, ch, dir, idx, mask, val);
}
