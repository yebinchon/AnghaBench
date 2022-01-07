
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_DIG1_ENABLE ;
 int AC_WCAP_OUT_AMP ;
 int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 int get_wcaps (struct hda_codec*,int ) ;
 int set_dig_out_convert (struct hda_codec*,int ,int,int) ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void set_spdif_ctls(struct hda_codec *codec, hda_nid_t nid,
      int dig1, int dig2)
{
 set_dig_out_convert(codec, nid, dig1, dig2);

 if ((get_wcaps(codec, nid) & AC_WCAP_OUT_AMP) &&
     (dig1 & AC_DIG1_ENABLE))
  snd_hda_codec_amp_stereo(codec, nid, HDA_OUTPUT, 0,
         HDA_AMP_MUTE, 0);
}
