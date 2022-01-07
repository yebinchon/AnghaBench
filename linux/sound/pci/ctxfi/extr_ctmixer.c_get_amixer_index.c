
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum CT_AMIXER_CTL { ____Placeholder_CT_AMIXER_CTL } CT_AMIXER_CTL ;
typedef enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;


 int AMIXER_LINEIN ;
 int AMIXER_LINEIN_C ;
 int AMIXER_MASTER_F ;
 int AMIXER_MASTER_F_C ;
 int AMIXER_MIC ;
 int AMIXER_MIC_C ;
 int AMIXER_PCM_F ;
 int AMIXER_PCM_F_C ;
 int AMIXER_SPDIFI ;
 int AMIXER_SPDIFI_C ;
 int AMIXER_SPDIFO ;
 int AMIXER_WAVE_C ;
 int AMIXER_WAVE_F ;
 int AMIXER_WAVE_R ;
 int AMIXER_WAVE_S ;
 int NUM_CT_AMIXERS ;

__attribute__((used)) static enum CT_AMIXER_CTL get_amixer_index(enum CTALSA_MIXER_CTL alsa_index)
{
 switch (alsa_index) {
 case 142: return AMIXER_MASTER_F;
 case 143: return AMIXER_MASTER_F_C;
 case 136: return AMIXER_PCM_F;
 case 138:
 case 137: return AMIXER_PCM_F_C;
 case 144: return AMIXER_LINEIN;
 case 146:
 case 145: return AMIXER_LINEIN_C;
 case 139: return AMIXER_MIC;
 case 141:
 case 140: return AMIXER_MIC_C;
 case 133: return AMIXER_SPDIFI;
 case 135:
 case 134: return AMIXER_SPDIFI_C;
 case 132: return AMIXER_SPDIFO;
 case 130: return AMIXER_WAVE_F;
 case 128: return AMIXER_WAVE_S;
 case 131: return AMIXER_WAVE_C;
 case 129: return AMIXER_WAVE_R;
 default: return NUM_CT_AMIXERS;
 }
}
