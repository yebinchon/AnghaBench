
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; } ;
typedef int hda_nid_t ;


 int AC_AMPCAP_MIN_MUTE ;
 int AC_AMPCAP_MUTE ;
 unsigned int AC_AMP_FAKE_MUTE ;
 int query_amp_caps (struct hda_codec*,int ,int) ;
 unsigned int snd_hdac_regmap_encode_amp (int ,int,int,int) ;
 int snd_hdac_regmap_update_raw (int *,unsigned int,int,int) ;

int snd_hda_codec_amp_update(struct hda_codec *codec, hda_nid_t nid,
        int ch, int dir, int idx, int mask, int val)
{
 unsigned int cmd = snd_hdac_regmap_encode_amp(nid, ch, dir, idx);


 if ((query_amp_caps(codec, nid, dir) &
      (AC_AMPCAP_MUTE | AC_AMPCAP_MIN_MUTE)) == AC_AMPCAP_MIN_MUTE)
  cmd |= AC_AMP_FAKE_MUTE;
 return snd_hdac_regmap_update_raw(&codec->core, cmd, mask, val);
}
