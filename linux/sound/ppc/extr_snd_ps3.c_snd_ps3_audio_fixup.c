
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ps3_card_info {int dummy; } ;


 int PS3_AUDIO_AO_3WMCTRL ;
 int PS3_AUDIO_AO_3WMCTRL_ASOBCLKD_DISABLED ;
 int PS3_AUDIO_AO_3WMCTRL_ASOLRCKD_DISABLED ;
 int PS3_AUDIO_AO_3WMCTRL_ASOPLRCK_DEFAULT ;
 int PS3_AUDIO_AX_IC ;
 int PS3_AUDIO_AX_IC_AASOIMD_EVERY4 ;
 int PS3_AUDIO_AX_IC_AASOIMD_MASK ;
 int PS3_AUDIO_INTR_EN_0 ;
 int update_mask_reg (int ,int,int ) ;
 int update_reg (int ,int ) ;
 int write_reg (int ,int ) ;

__attribute__((used)) static void snd_ps3_audio_fixup(struct snd_ps3_card_info *card)
{






 write_reg(PS3_AUDIO_INTR_EN_0, 0);


 update_mask_reg(PS3_AUDIO_AX_IC,
   PS3_AUDIO_AX_IC_AASOIMD_MASK,
   PS3_AUDIO_AX_IC_AASOIMD_EVERY4);


 update_mask_reg(PS3_AUDIO_AO_3WMCTRL,
   ~(PS3_AUDIO_AO_3WMCTRL_ASOBCLKD_DISABLED |
     PS3_AUDIO_AO_3WMCTRL_ASOLRCKD_DISABLED),
   0);
 update_reg(PS3_AUDIO_AO_3WMCTRL,
     PS3_AUDIO_AO_3WMCTRL_ASOPLRCK_DEFAULT);
}
