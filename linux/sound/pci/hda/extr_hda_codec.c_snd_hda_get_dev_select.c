
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dp_mst; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_DEVICE_SEL ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

int snd_hda_get_dev_select(struct hda_codec *codec, hda_nid_t nid)
{

 if (!codec->dp_mst)
  return 0;

 return snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_DEVICE_SEL, 0);
}
