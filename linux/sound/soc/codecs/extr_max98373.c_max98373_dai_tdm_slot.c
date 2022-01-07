
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct max98373_priv {int tdm_mode; int regmap; } ;


 int EINVAL ;
 int MAX98373_PCM_CLK_SETUP_BSEL_MASK ;
 unsigned int MAX98373_PCM_MODE_CFG_CHANSZ_16 ;
 unsigned int MAX98373_PCM_MODE_CFG_CHANSZ_24 ;
 unsigned int MAX98373_PCM_MODE_CFG_CHANSZ_32 ;
 int MAX98373_PCM_MODE_CFG_CHANSZ_MASK ;
 int MAX98373_PCM_TO_SPK_CH0_SRC_MASK ;
 int MAX98373_R2020_PCM_TX_HIZ_EN_1 ;
 int MAX98373_R2021_PCM_TX_HIZ_EN_2 ;
 int MAX98373_R2024_PCM_DATA_FMT_CFG ;
 int MAX98373_R2026_PCM_CLOCK_RATIO ;
 int MAX98373_R2029_PCM_TO_SPK_MONO_MIX_1 ;
 int MAX98373_R202A_PCM_TO_SPK_MONO_MIX_2 ;
 int dev_err (int ,char*,int) ;
 int max98373_get_bclk_sel (int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct max98373_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98373_dai_tdm_slot(struct snd_soc_dai *dai,
 unsigned int tx_mask, unsigned int rx_mask,
 int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct max98373_priv *max98373 = snd_soc_component_get_drvdata(component);
 int bsel = 0;
 unsigned int chan_sz = 0;
 unsigned int mask;
 int x, slot_found;

 if (!tx_mask && !rx_mask && !slots && !slot_width)
  max98373->tdm_mode = 0;
 else
  max98373->tdm_mode = 1;


 bsel = max98373_get_bclk_sel(slots * slot_width);
 if (bsel == 0) {
  dev_err(component->dev, "BCLK %d not supported\n",
   slots * slot_width);
  return -EINVAL;
 }

 regmap_update_bits(max98373->regmap,
  MAX98373_R2026_PCM_CLOCK_RATIO,
  MAX98373_PCM_CLK_SETUP_BSEL_MASK,
  bsel);


 switch (slot_width) {
 case 16:
  chan_sz = MAX98373_PCM_MODE_CFG_CHANSZ_16;
  break;
 case 24:
  chan_sz = MAX98373_PCM_MODE_CFG_CHANSZ_24;
  break;
 case 32:
  chan_sz = MAX98373_PCM_MODE_CFG_CHANSZ_32;
  break;
 default:
  dev_err(component->dev, "format unsupported %d\n",
   slot_width);
  return -EINVAL;
 }

 regmap_update_bits(max98373->regmap,
  MAX98373_R2024_PCM_DATA_FMT_CFG,
  MAX98373_PCM_MODE_CFG_CHANSZ_MASK, chan_sz);


 slot_found = 0;
 mask = rx_mask;
 for (x = 0 ; x < 16 ; x++, mask >>= 1) {
  if (mask & 0x1) {
   if (slot_found == 0)
    regmap_update_bits(max98373->regmap,
     MAX98373_R2029_PCM_TO_SPK_MONO_MIX_1,
     MAX98373_PCM_TO_SPK_CH0_SRC_MASK, x);
   else
    regmap_write(max98373->regmap,
     MAX98373_R202A_PCM_TO_SPK_MONO_MIX_2,
     x);
   slot_found++;
   if (slot_found > 1)
    break;
  }
 }


 regmap_write(max98373->regmap,
  MAX98373_R2020_PCM_TX_HIZ_EN_1,
  ~tx_mask & 0xFF);
 regmap_write(max98373->regmap,
  MAX98373_R2021_PCM_TX_HIZ_EN_2,
  (~tx_mask & 0xFF00) >> 8);

 return 0;
}
