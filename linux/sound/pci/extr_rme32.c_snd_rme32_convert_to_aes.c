
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_aes_iec958 {int * status; } ;


 int IEC958_AES0_CON_EMPHASIS_5015 ;
 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_EMPHASIS_5015 ;
 int RME32_WCR_EMP ;
 int RME32_WCR_PRO ;

__attribute__((used)) static void snd_rme32_convert_to_aes(struct snd_aes_iec958 * aes, u32 val)
{
 aes->status[0] = ((val & RME32_WCR_PRO) ? IEC958_AES0_PROFESSIONAL : 0);
 if (val & RME32_WCR_PRO)
  aes->status[0] |= (val & RME32_WCR_EMP) ? IEC958_AES0_PRO_EMPHASIS_5015 : 0;
 else
  aes->status[0] |= (val & RME32_WCR_EMP) ? IEC958_AES0_CON_EMPHASIS_5015 : 0;
}
