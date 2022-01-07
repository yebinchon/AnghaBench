
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_3__ {int val; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IEC958_AES0_CON_EMPHASIS ;
 int IEC958_AES0_CON_EMPHASIS_5015 ;
 int IEC958_AES0_CON_NOT_COPYRIGHT ;
 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_EMPHASIS ;




 int IEC958_AES0_PRO_FREQ_UNLOCKED ;
 int IEC958_AES0_PRO_FS ;



 int IEC958_AES1_CON_CATEGORY ;
 int IEC958_AES1_CON_ORIGINAL ;
 int IEC958_AES1_PRO_MODE ;
 int IEC958_AES1_PRO_MODE_STEREOPHONIC ;
 int IEC958_AES1_PRO_USERBITS ;


 int IEC958_AES2_PRO_SBITS ;



 int IEC958_AES2_PRO_WORDLEN ;




 int IEC958_AES3_CON_CLOCK ;



 int IEC958_AES3_CON_FS ;



 TYPE_1__* snd_ca0106_con_category ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void snd_ca0106_proc_dump_iec958( struct snd_info_buffer *buffer, u32 value)
{
 int i;
 u32 status[4];
 status[0] = value & 0xff;
 status[1] = (value >> 8) & 0xff;
 status[2] = (value >> 16) & 0xff;
 status[3] = (value >> 24) & 0xff;

 if (! (status[0] & IEC958_AES0_PROFESSIONAL)) {

  snd_iprintf(buffer, "Mode: consumer\n");
  snd_iprintf(buffer, "Data: ");
  if (!(status[0] & IEC958_AES0_NONAUDIO)) {
   snd_iprintf(buffer, "audio\n");
  } else {
   snd_iprintf(buffer, "non-audio\n");
  }
  snd_iprintf(buffer, "Rate: ");
  switch (status[3] & IEC958_AES3_CON_FS) {
  case 129:
   snd_iprintf(buffer, "44100 Hz\n");
   break;
  case 128:
   snd_iprintf(buffer, "48000 Hz\n");
   break;
  case 130:
   snd_iprintf(buffer, "32000 Hz\n");
   break;
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
  snd_iprintf(buffer, "Copyright: ");
  if (status[0] & IEC958_AES0_CON_NOT_COPYRIGHT) {
   snd_iprintf(buffer, "permitted\n");
  } else {
   snd_iprintf(buffer, "protected\n");
  }
  snd_iprintf(buffer, "Emphasis: ");
  if ((status[0] & IEC958_AES0_CON_EMPHASIS) != IEC958_AES0_CON_EMPHASIS_5015) {
   snd_iprintf(buffer, "none\n");
  } else {
   snd_iprintf(buffer, "50/15us\n");
  }
  snd_iprintf(buffer, "Category: ");
  for (i = 0; i < ARRAY_SIZE(snd_ca0106_con_category); i++) {
   if ((status[1] & IEC958_AES1_CON_CATEGORY) == snd_ca0106_con_category[i].val) {
    snd_iprintf(buffer, "%s\n", snd_ca0106_con_category[i].name);
    break;
   }
  }
  if (i >= ARRAY_SIZE(snd_ca0106_con_category)) {
   snd_iprintf(buffer, "unknown 0x%x\n", status[1] & IEC958_AES1_CON_CATEGORY);
  }
  snd_iprintf(buffer, "Original: ");
  if (status[1] & IEC958_AES1_CON_ORIGINAL) {
   snd_iprintf(buffer, "original\n");
  } else {
   snd_iprintf(buffer, "1st generation\n");
  }
  snd_iprintf(buffer, "Clock: ");
  switch (status[3] & IEC958_AES3_CON_CLOCK) {
  case 133:
   snd_iprintf(buffer, "1000 ppm\n");
   break;
  case 132:
   snd_iprintf(buffer, "50 ppm\n");
   break;
  case 131:
   snd_iprintf(buffer, "variable pitch\n");
   break;
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
 } else {
  snd_iprintf(buffer, "Mode: professional\n");
  snd_iprintf(buffer, "Data: ");
  if (!(status[0] & IEC958_AES0_NONAUDIO)) {
   snd_iprintf(buffer, "audio\n");
  } else {
   snd_iprintf(buffer, "non-audio\n");
  }
  snd_iprintf(buffer, "Rate: ");
  switch (status[0] & IEC958_AES0_PRO_FS) {
  case 144:
   snd_iprintf(buffer, "44100 Hz\n");
   break;
  case 143:
   snd_iprintf(buffer, "48000 Hz\n");
   break;
  case 145:
   snd_iprintf(buffer, "32000 Hz\n");
   break;
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
  snd_iprintf(buffer, "Rate Locked: ");
  if (status[0] & IEC958_AES0_PRO_FREQ_UNLOCKED)
   snd_iprintf(buffer, "no\n");
  else
   snd_iprintf(buffer, "yes\n");
  snd_iprintf(buffer, "Emphasis: ");
  switch (status[0] & IEC958_AES0_PRO_EMPHASIS) {
  case 148:
   snd_iprintf(buffer, "CCITT J.17\n");
   break;
  case 147:
   snd_iprintf(buffer, "none\n");
   break;
  case 149:
   snd_iprintf(buffer, "50/15us\n");
   break;
  case 146:
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
  snd_iprintf(buffer, "Stereophonic: ");
  if ((status[1] & IEC958_AES1_PRO_MODE) == IEC958_AES1_PRO_MODE_STEREOPHONIC) {
   snd_iprintf(buffer, "stereo\n");
  } else {
   snd_iprintf(buffer, "not indicated\n");
  }
  snd_iprintf(buffer, "Userbits: ");
  switch (status[1] & IEC958_AES1_PRO_USERBITS) {
  case 142:
   snd_iprintf(buffer, "192bit\n");
   break;
  case 141:
   snd_iprintf(buffer, "user-defined\n");
   break;
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
  snd_iprintf(buffer, "Sample Bits: ");
  switch (status[2] & IEC958_AES2_PRO_SBITS) {
  case 140:
   snd_iprintf(buffer, "20 bit\n");
   break;
  case 139:
   snd_iprintf(buffer, "24 bit\n");
   break;
  case 138:
   snd_iprintf(buffer, "user defined\n");
   break;
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
  snd_iprintf(buffer, "Word Length: ");
  switch (status[2] & IEC958_AES2_PRO_WORDLEN) {
  case 136:
   snd_iprintf(buffer, "22 bit or 18 bit\n");
   break;
  case 135:
   snd_iprintf(buffer, "23 bit or 19 bit\n");
   break;
  case 134:
   snd_iprintf(buffer, "24 bit or 20 bit\n");
   break;
  case 137:
   snd_iprintf(buffer, "20 bit or 16 bit\n");
   break;
  default:
   snd_iprintf(buffer, "unknown\n");
   break;
  }
 }
}
