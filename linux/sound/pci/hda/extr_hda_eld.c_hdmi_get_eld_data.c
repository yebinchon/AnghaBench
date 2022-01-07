
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_HDMI_ELDD ;
 int codec_info (struct hda_codec*,char*,int,unsigned int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static unsigned int hdmi_get_eld_data(struct hda_codec *codec, hda_nid_t nid,
     int byte_index)
{
 unsigned int val;

 val = snd_hda_codec_read(codec, nid, 0,
     AC_VERB_GET_HDMI_ELDD, byte_index);



 return val;
}
