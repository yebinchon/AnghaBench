
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; struct mt8183_afe_private* platform_priv; } ;
struct mt8183_afe_private {int mtkaif_protocol; int* mtkaif_phase_cycle; } ;


 int AFE_ADDA_MTKAIF_CFG0 ;
 int AFE_ADDA_MTKAIF_RX_CFG2 ;
 int AFE_AUD_PAD_TOP ;
 int DELAY_DATA_MISO1 ;
 int DELAY_DATA_MISO2 ;



 int MTKAIF_RXIF_DELAY_CYCLE_MASK_SFT ;
 int MTKAIF_RXIF_DELAY_CYCLE_SFT ;
 int MTKAIF_RXIF_DELAY_DATA_MASK_SFT ;
 int MTKAIF_RXIF_DELAY_DATA_SFT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int set_mtkaif_rx(struct mtk_base_afe *afe)
{
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 int delay_data;
 int delay_cycle;

 switch (afe_priv->mtkaif_protocol) {
 case 128:
  regmap_write(afe->regmap, AFE_AUD_PAD_TOP, 0x38);
  regmap_write(afe->regmap, AFE_AUD_PAD_TOP, 0x39);

  regmap_write(afe->regmap, AFE_ADDA_MTKAIF_CFG0,
        0x80010000);

  if (afe_priv->mtkaif_phase_cycle[0] >=
      afe_priv->mtkaif_phase_cycle[1]) {
   delay_data = DELAY_DATA_MISO1;
   delay_cycle = afe_priv->mtkaif_phase_cycle[0] -
          afe_priv->mtkaif_phase_cycle[1];
  } else {
   delay_data = DELAY_DATA_MISO2;
   delay_cycle = afe_priv->mtkaif_phase_cycle[1] -
          afe_priv->mtkaif_phase_cycle[0];
  }

  regmap_update_bits(afe->regmap,
       AFE_ADDA_MTKAIF_RX_CFG2,
       MTKAIF_RXIF_DELAY_DATA_MASK_SFT,
       delay_data << MTKAIF_RXIF_DELAY_DATA_SFT);

  regmap_update_bits(afe->regmap,
       AFE_ADDA_MTKAIF_RX_CFG2,
       MTKAIF_RXIF_DELAY_CYCLE_MASK_SFT,
       delay_cycle << MTKAIF_RXIF_DELAY_CYCLE_SFT);
  break;
 case 129:
  regmap_write(afe->regmap, AFE_AUD_PAD_TOP, 0x31);
  regmap_write(afe->regmap, AFE_ADDA_MTKAIF_CFG0,
        0x00010000);
  break;
 case 130:
  regmap_write(afe->regmap, AFE_AUD_PAD_TOP, 0x31);
  regmap_write(afe->regmap, AFE_ADDA_MTKAIF_CFG0, 0x0);
 default:
  break;
 }

 return 0;
}
