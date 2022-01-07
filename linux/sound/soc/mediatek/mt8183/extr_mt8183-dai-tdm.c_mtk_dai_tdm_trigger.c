
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_afe {int regmap; } ;


 int AFE_HDMI_OUT_CON0 ;
 int AFE_HDMI_OUT_ON_MASK_SFT ;
 int AFE_HDMI_OUT_ON_SFT ;
 int AFE_TDM_CON1 ;
 int EINVAL ;




 int TDM_EN_MASK_SFT ;
 int TDM_EN_SFT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mtk_dai_tdm_trigger(struct snd_pcm_substream *substream,
          int cmd,
          struct snd_soc_dai *dai)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 131:

  regmap_update_bits(afe->regmap, AFE_HDMI_OUT_CON0,
       AFE_HDMI_OUT_ON_MASK_SFT,
       0x1 << AFE_HDMI_OUT_ON_SFT);

  regmap_update_bits(afe->regmap, AFE_TDM_CON1,
       TDM_EN_MASK_SFT, 0x1 << TDM_EN_SFT);
  break;
 case 129:
 case 128:

  regmap_update_bits(afe->regmap, AFE_TDM_CON1,
       TDM_EN_MASK_SFT, 0);

  regmap_update_bits(afe->regmap, AFE_HDMI_OUT_CON0,
       AFE_HDMI_OUT_ON_MASK_SFT,
       0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
