
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PWRST_ACTUAL ;
 int AC_PWRST_ACTUAL_SHIFT ;
 int AC_PWRST_D0 ;
 int AC_VERB_GET_POWER_STATE ;
 int AC_VERB_SET_POWER_STATE ;
 int codec_dbg (struct hda_codec*,char*,int ,int) ;
 int msleep (int) ;
 int snd_hda_check_power_state (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void haswell_verify_D0(struct hda_codec *codec,
  hda_nid_t cvt_nid, hda_nid_t nid)
{
 int pwr;




 if (!snd_hda_check_power_state(codec, cvt_nid, AC_PWRST_D0))
  snd_hda_codec_write(codec, cvt_nid, 0, AC_VERB_SET_POWER_STATE, AC_PWRST_D0);

 if (!snd_hda_check_power_state(codec, nid, AC_PWRST_D0)) {
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_POWER_STATE,
        AC_PWRST_D0);
  msleep(40);
  pwr = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_POWER_STATE, 0);
  pwr = (pwr & AC_PWRST_ACTUAL) >> AC_PWRST_ACTUAL_SHIFT;
  codec_dbg(codec, "Haswell HDMI audio: Power for pin 0x%x is now D%d\n", nid, pwr);
 }
}
