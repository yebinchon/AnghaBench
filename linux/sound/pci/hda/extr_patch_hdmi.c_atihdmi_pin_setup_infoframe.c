
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ATI_VERB_SET_CHANNEL_ALLOCATION ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void atihdmi_pin_setup_infoframe(struct hda_codec *codec, hda_nid_t pin_nid, int ca,
     int active_channels, int conn_type)
{
 snd_hda_codec_write(codec, pin_nid, 0, ATI_VERB_SET_CHANNEL_ALLOCATION, ca);
}
