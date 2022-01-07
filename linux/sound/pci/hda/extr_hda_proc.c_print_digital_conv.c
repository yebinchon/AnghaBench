
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_DIG1_COPYRIGHT ;
 unsigned int AC_DIG1_EMPHASIS ;
 unsigned int AC_DIG1_ENABLE ;
 unsigned int AC_DIG1_LEVEL ;
 unsigned int AC_DIG1_NONAUDIO ;
 unsigned int AC_DIG1_PROFESSIONAL ;
 unsigned int AC_DIG1_V ;
 unsigned int AC_DIG1_VCFG ;
 unsigned char AC_DIG2_CC ;
 unsigned char AC_DIG3_ICT ;
 unsigned char AC_DIG3_KAE ;
 int AC_VERB_GET_DIGI_CONVERT_1 ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_digital_conv(struct snd_info_buffer *buffer,
          struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int digi1 = snd_hda_codec_read(codec, nid, 0,
      AC_VERB_GET_DIGI_CONVERT_1, 0);
 unsigned char digi2 = digi1 >> 8;
 unsigned char digi3 = digi1 >> 16;

 snd_iprintf(buffer, "  Digital:");
 if (digi1 & AC_DIG1_ENABLE)
  snd_iprintf(buffer, " Enabled");
 if (digi1 & AC_DIG1_V)
  snd_iprintf(buffer, " Validity");
 if (digi1 & AC_DIG1_VCFG)
  snd_iprintf(buffer, " ValidityCfg");
 if (digi1 & AC_DIG1_EMPHASIS)
  snd_iprintf(buffer, " Preemphasis");
 if (digi1 & AC_DIG1_COPYRIGHT)
  snd_iprintf(buffer, " Non-Copyright");
 if (digi1 & AC_DIG1_NONAUDIO)
  snd_iprintf(buffer, " Non-Audio");
 if (digi1 & AC_DIG1_PROFESSIONAL)
  snd_iprintf(buffer, " Pro");
 if (digi1 & AC_DIG1_LEVEL)
  snd_iprintf(buffer, " GenLevel");
 if (digi3 & AC_DIG3_KAE)
  snd_iprintf(buffer, " KAE");
 snd_iprintf(buffer, "\n");
 snd_iprintf(buffer, "  Digital category: 0x%x\n",
      digi2 & AC_DIG2_CC);
 snd_iprintf(buffer, "  IEC Coding Type: 0x%x\n",
   digi3 & AC_DIG3_ICT);
}
