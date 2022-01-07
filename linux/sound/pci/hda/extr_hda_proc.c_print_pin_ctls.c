
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCTL_HP_EN ;
 unsigned int AC_PINCTL_IN_EN ;
 unsigned int AC_PINCTL_OUT_EN ;
 unsigned int AC_PINCTL_VREFEN ;





 int AC_VERB_GET_PIN_WIDGET_CONTROL ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_pin_ctls(struct snd_info_buffer *buffer,
      struct hda_codec *codec, hda_nid_t nid,
      int supports_vref)
{
 unsigned int pinctls;

 pinctls = snd_hda_codec_read(codec, nid, 0,
         AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
 snd_iprintf(buffer, "  Pin-ctls: 0x%02x:", pinctls);
 if (pinctls & AC_PINCTL_IN_EN)
  snd_iprintf(buffer, " IN");
 if (pinctls & AC_PINCTL_OUT_EN)
  snd_iprintf(buffer, " OUT");
 if (pinctls & AC_PINCTL_HP_EN)
  snd_iprintf(buffer, " HP");
 if (supports_vref) {
  int vref = pinctls & AC_PINCTL_VREFEN;
  switch (vref) {
  case 128:
   snd_iprintf(buffer, " VREF_HIZ");
   break;
  case 131:
   snd_iprintf(buffer, " VREF_50");
   break;
  case 129:
   snd_iprintf(buffer, " VREF_GRD");
   break;
  case 130:
   snd_iprintf(buffer, " VREF_80");
   break;
  case 132:
   snd_iprintf(buffer, " VREF_100");
   break;
  }
 }
 snd_iprintf(buffer, "\n");
}
