
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dp_mst; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_DEVICE_SEL ;
 int EINVAL ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_get_num_devices (struct hda_codec*,int ) ;

int snd_hda_set_dev_select(struct hda_codec *codec, hda_nid_t nid, int dev_id)
{
 int ret, num_devices;


 if (!codec->dp_mst)
  return 0;


 num_devices = snd_hda_get_num_devices(codec, nid) + 1;




 if (num_devices == 1)
  return 0;




 if (num_devices <= dev_id)
  return -EINVAL;

 ret = snd_hda_codec_write(codec, nid, 0,
   AC_VERB_SET_DEVICE_SEL, dev_id);

 return ret;
}
