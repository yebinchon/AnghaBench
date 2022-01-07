
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ps3_card_info {int dummy; } ;


 int PS3_AUDIO_AX_IS ;
 int PS3_AUDIO_CONFIG ;
 int PS3_AUDIO_CONFIG_CLEAR ;
 int PS3_AUDIO_INTR_0 ;
 int snd_ps3_verify_dma_stop (struct snd_ps3_card_info*,int,int) ;
 int update_mask_reg (int ,int ,int ) ;
 int update_reg (int ,int ) ;
 int wmb () ;

__attribute__((used)) static void snd_ps3_wait_for_dma_stop(struct snd_ps3_card_info *card)
{
 int stop_forced;
 stop_forced = snd_ps3_verify_dma_stop(card, 700, 1);




 update_reg(PS3_AUDIO_INTR_0, 0);
 update_reg(PS3_AUDIO_AX_IS, 0);




 if (stop_forced)
  update_mask_reg(PS3_AUDIO_CONFIG, ~PS3_AUDIO_CONFIG_CLEAR, 0);

 wmb();
}
