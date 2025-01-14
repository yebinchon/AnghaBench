
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_aes_iec958 {int* status; } ;


 int HDSP_SPDIFEmphasis ;
 int HDSP_SPDIFNonAudio ;
 int HDSP_SPDIFProfessional ;
 int IEC958_AES0_CON_EMPHASIS_5015 ;
 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_EMPHASIS_5015 ;

__attribute__((used)) static u32 snd_hdsp_convert_from_aes(struct snd_aes_iec958 *aes)
{
 u32 val = 0;
 val |= (aes->status[0] & IEC958_AES0_PROFESSIONAL) ? HDSP_SPDIFProfessional : 0;
 val |= (aes->status[0] & IEC958_AES0_NONAUDIO) ? HDSP_SPDIFNonAudio : 0;
 if (val & HDSP_SPDIFProfessional)
  val |= (aes->status[0] & IEC958_AES0_PRO_EMPHASIS_5015) ? HDSP_SPDIFEmphasis : 0;
 else
  val |= (aes->status[0] & IEC958_AES0_CON_EMPHASIS_5015) ? HDSP_SPDIFEmphasis : 0;
 return val;
}
