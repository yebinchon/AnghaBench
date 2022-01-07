
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ is_stereo_amps (struct hda_codec*,int ,int) ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int ,int,int,unsigned int,unsigned int) ;
 int snd_hda_codec_amp_update (struct hda_codec*,int ,int ,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int update_amp(struct hda_codec *codec, hda_nid_t nid, int dir, int idx,
        unsigned int mask, unsigned int val)
{
 if (is_stereo_amps(codec, nid, dir))
  return snd_hda_codec_amp_stereo(codec, nid, dir, idx,
      mask, val);
 else
  return snd_hda_codec_amp_update(codec, nid, 0, dir, idx,
      mask, val);
}
