
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned long u32 ;
typedef unsigned int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct da7219_priv {int tdm_en; int regmap; scalar_t__ master; struct clk** dai_clks; } ;
struct clk {int dummy; } ;
typedef int dai_offset ;
typedef int __le16 ;


 size_t DA7219_DAI_BCLK_IDX ;
 int DA7219_DAI_OFFSET_LOWER ;
 unsigned int DA7219_DAI_OFFSET_MAX ;
 unsigned int DA7219_DAI_TDM_CH_EN_MASK ;
 unsigned int DA7219_DAI_TDM_CH_EN_SHIFT ;
 int DA7219_DAI_TDM_CTRL ;
 scalar_t__ DA7219_DAI_TDM_MAX_SLOTS ;
 unsigned int DA7219_DAI_TDM_MODE_EN_MASK ;
 size_t DA7219_DAI_WCLK_IDX ;
 int EINVAL ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_set_rate (struct clk*,unsigned long) ;
 int cpu_to_le16 (unsigned int) ;
 int da7219_set_bclks_per_wclk (struct snd_soc_component*,unsigned long) ;
 int dev_err (int ,char*,unsigned long,...) ;
 unsigned int ffs (unsigned int) ;
 scalar_t__ fls (unsigned int) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int da7219_set_dai_tdm_slot(struct snd_soc_dai *dai,
       unsigned int tx_mask, unsigned int rx_mask,
       int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct clk *wclk = da7219->dai_clks[DA7219_DAI_WCLK_IDX];
 struct clk *bclk = da7219->dai_clks[DA7219_DAI_BCLK_IDX];
 unsigned int ch_mask;
 unsigned long sr, bclk_rate;
 u8 slot_offset;
 u16 offset;
 __le16 dai_offset;
 u32 frame_size;
 int ret;


 if (!tx_mask) {
  snd_soc_component_update_bits(component, DA7219_DAI_TDM_CTRL,
        DA7219_DAI_TDM_CH_EN_MASK |
        DA7219_DAI_TDM_MODE_EN_MASK, 0);
  da7219->tdm_en = 0;
  return 0;
 }


 slot_offset = ffs(tx_mask) - 1;
 ch_mask = (tx_mask >> slot_offset);
 if (fls(ch_mask) > DA7219_DAI_TDM_MAX_SLOTS) {
  dev_err(component->dev,
   "Invalid number of slots, max = %d\n",
   DA7219_DAI_TDM_MAX_SLOTS);
  return -EINVAL;
 }





 offset = slot_offset * slot_width;
 if (offset > DA7219_DAI_OFFSET_MAX) {
  dev_err(component->dev, "Invalid frame offset %d\n", offset);
  return -EINVAL;
 }





 if (da7219->master) {
  frame_size = slots * slot_width;

  if (bclk) {
   sr = clk_get_rate(wclk);
   bclk_rate = sr * frame_size;
   ret = clk_set_rate(bclk, bclk_rate);
   if (ret) {
    dev_err(component->dev,
     "Failed to set TDM BCLK rate %lu: %d\n",
     bclk_rate, ret);
    return ret;
   }
  } else {
   ret = da7219_set_bclks_per_wclk(component, frame_size);
   if (ret) {
    dev_err(component->dev,
     "Failed to set TDM BCLKs per WCLK %d: %d\n",
     frame_size, ret);
    return ret;
   }
  }
 }

 dai_offset = cpu_to_le16(offset);
 regmap_bulk_write(da7219->regmap, DA7219_DAI_OFFSET_LOWER,
     &dai_offset, sizeof(dai_offset));

 snd_soc_component_update_bits(component, DA7219_DAI_TDM_CTRL,
       DA7219_DAI_TDM_CH_EN_MASK |
       DA7219_DAI_TDM_MODE_EN_MASK,
       (ch_mask << DA7219_DAI_TDM_CH_EN_SHIFT) |
       DA7219_DAI_TDM_MODE_EN_MASK);

 da7219->tdm_en = 1;

 return 0;
}
