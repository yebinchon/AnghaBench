
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aes_iec958 {int* status; } ;


 int IEC958_AES0_CON_EMPHASIS ;
 int IEC958_AES0_CON_EMPHASIS_5015 ;
 int IEC958_AES0_PRO_EMPHASIS ;
 int IEC958_AES0_PRO_EMPHASIS_5015 ;
 int IEC958_AES0_PRO_FS ;


 int IEC958_AES3_CON_FS ;

__attribute__((used)) static unsigned int encode_spdif_bits(struct snd_aes_iec958 *diga)
{
 unsigned int val, rbits;

 val = diga->status[0] & 0x03;
 if (val & 0x01) {

  if ((diga->status[0] & IEC958_AES0_PRO_EMPHASIS) ==
      IEC958_AES0_PRO_EMPHASIS_5015)
   val |= 1U << 3;
  rbits = (diga->status[4] >> 3) & 0x0f;
  if (rbits) {
   switch (rbits) {
   case 2: val |= 5 << 12; break;
   case 3: val |= 6 << 12; break;
   case 10: val |= 4 << 12; break;
   case 11: val |= 7 << 12; break;
   }
  } else {
   switch (diga->status[0] & IEC958_AES0_PRO_FS) {
   case 128:
    break;
   case 129:
    val |= 3U << 12;
    break;
   default:
    val |= 2U << 12;
    break;
   }
  }
 } else {

  val |= diga->status[1] & 0x04;
  if ((diga->status[0] & IEC958_AES0_CON_EMPHASIS) ==
      IEC958_AES0_CON_EMPHASIS_5015)
   val |= 1U << 3;
  val |= (unsigned int)(diga->status[1] & 0x3f) << 4;
  val |= (unsigned int)(diga->status[3] & IEC958_AES3_CON_FS) << 12;
 }
 return val;
}
