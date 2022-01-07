
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_codec_amp_init (struct hda_codec*,int ,int,int,int,int,int) ;

int snd_hda_codec_amp_init_stereo(struct hda_codec *codec, hda_nid_t nid,
      int dir, int idx, int mask, int val)
{
 int ch, ret = 0;

 if (snd_BUG_ON(mask & ~0xff))
  mask &= 0xff;
 for (ch = 0; ch < 2; ch++)
  ret |= snd_hda_codec_amp_init(codec, nid, ch, dir,
           idx, mask, val);
 return ret;
}
