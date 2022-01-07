
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;



 int AMIXER_LINEIN_C ;

 int AMIXER_MASTER_F_C ;

 int AMIXER_MIC_C ;

 int AMIXER_PCM_F_C ;

 int AMIXER_SPDIFI_C ;
 int NUM_CT_AMIXERS ;

__attribute__((used)) static enum CT_AMIXER_CTL get_recording_amixer(enum CT_AMIXER_CTL index)
{
 switch (index) {
 case 131: return AMIXER_MASTER_F_C;
 case 129: return AMIXER_PCM_F_C;
 case 128: return AMIXER_SPDIFI_C;
 case 132: return AMIXER_LINEIN_C;
 case 130: return AMIXER_MIC_C;
 default: return NUM_CT_AMIXERS;
 }
}
