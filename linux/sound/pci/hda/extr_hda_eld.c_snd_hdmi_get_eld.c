
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_ELDD_ELD_DATA ;
 unsigned int AC_ELDD_ELD_VALID ;
 int EINVAL ;
 int ELD_FIXED_BYTES ;
 int ELD_MAX_SIZE ;
 int ERANGE ;
 int codec_dbg (struct hda_codec*,char*) ;
 int codec_info (struct hda_codec*,char*,...) ;
 unsigned int hdmi_get_eld_data (struct hda_codec*,int ,int) ;
 int snd_hdmi_get_eld_size (struct hda_codec*,int ) ;

int snd_hdmi_get_eld(struct hda_codec *codec, hda_nid_t nid,
       unsigned char *buf, int *eld_size)
{
 int i;
 int ret = 0;
 int size;






 size = snd_hdmi_get_eld_size(codec, nid);
 if (size == 0) {

  codec_info(codec, "HDMI: ELD buf size is 0, force 128\n");
  size = 128;
 }
 if (size < ELD_FIXED_BYTES || size > ELD_MAX_SIZE) {
  codec_info(codec, "HDMI: invalid ELD buf size %d\n", size);
  return -ERANGE;
 }


 for (i = 0; i < size; i++) {
  unsigned int val = hdmi_get_eld_data(codec, nid, i);




  if (!(val & AC_ELDD_ELD_VALID)) {
   codec_info(codec, "HDMI: invalid ELD data byte %d\n", i);
   ret = -EINVAL;
   goto error;
  }
  val &= AC_ELDD_ELD_DATA;






  if (!val && !i) {
   codec_dbg(codec, "HDMI: 0 ELD data\n");
   ret = -EINVAL;
   goto error;
  }
  buf[i] = val;
 }

 *eld_size = size;
error:
 return ret;
}
