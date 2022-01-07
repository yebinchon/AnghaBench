
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs35l33_private {int regmap; } ;


 int ARRAY_SIZE (int *) ;
 unsigned int CS35L33_RX_AUD ;
 int CS35L33_TX_EN4 ;
 unsigned int CS35L33_TX_IMON ;
 unsigned int CS35L33_TX_VBSTMON ;
 unsigned int CS35L33_TX_VMON ;
 unsigned int CS35L33_TX_VPMON ;
 int CS35L33_X_LOC ;
 int CS35L33_X_STATE ;
 int EINVAL ;
 int * cs35l33_vp_vbst_mon_route ;
 int dev_dbg (int ,char*,int,...) ;
 int ffs (unsigned int) ;
 int regmap_update_bits (int ,unsigned int,int,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int *,int) ;
 int snd_soc_dapm_del_routes (struct snd_soc_dapm_context*,int *,int ) ;

__attribute__((used)) static int cs35l33_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
    unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct cs35l33_private *priv = snd_soc_component_get_drvdata(component);
 unsigned int reg, bit_pos, i;
 int slot, slot_num;

 if (slot_width != 8)
  return -EINVAL;


 slot = ffs(rx_mask) - 1;
 if (slot >= 0) {
  regmap_update_bits(priv->regmap, CS35L33_RX_AUD,
   CS35L33_X_LOC, slot);
  dev_dbg(component->dev, "Audio starts from slots %d", slot);
 }





 slot = ffs(tx_mask) - 1;
 slot_num = 0;

 for (i = 0; i < 2 ; i++) {

  regmap_update_bits(priv->regmap, CS35L33_TX_VPMON + i,
   CS35L33_X_STATE | CS35L33_X_LOC, CS35L33_X_STATE
   | CS35L33_X_LOC);
 }


 snd_soc_dapm_del_routes(dapm, cs35l33_vp_vbst_mon_route,
  ARRAY_SIZE(cs35l33_vp_vbst_mon_route));

 while (slot >= 0) {

  if (slot_num == 0) {
   regmap_update_bits(priv->regmap, CS35L33_TX_VMON,
    CS35L33_X_STATE | CS35L33_X_LOC, slot);
   dev_dbg(component->dev, "VMON enabled in slots %d-%d",
    slot, slot + 1);
  }


  if (slot_num == 3) {
   regmap_update_bits(priv->regmap, CS35L33_TX_IMON,
    CS35L33_X_STATE | CS35L33_X_LOC, slot);
   dev_dbg(component->dev, "IMON enabled in slots %d-%d",
    slot, slot + 1);
  }


  if (slot_num == 4) {
   regmap_update_bits(priv->regmap, CS35L33_TX_VPMON,
    CS35L33_X_STATE | CS35L33_X_LOC, slot);
   snd_soc_dapm_add_routes(dapm,
    &cs35l33_vp_vbst_mon_route[0], 2);
   dev_dbg(component->dev, "VPMON enabled in slots %d", slot);
  }


  if (slot_num == 5) {
   regmap_update_bits(priv->regmap, CS35L33_TX_VBSTMON,
    CS35L33_X_STATE | CS35L33_X_LOC, slot);
   snd_soc_dapm_add_routes(dapm,
    &cs35l33_vp_vbst_mon_route[2], 2);
   dev_dbg(component->dev,
    "VBSTMON enabled in slots %d", slot);
  }


  reg = CS35L33_TX_EN4 - (slot/8);
  bit_pos = slot - ((slot / 8) * (8));
  regmap_update_bits(priv->regmap, reg,
   1 << bit_pos, 1 << bit_pos);

  tx_mask &= ~(1 << slot);
  slot = ffs(tx_mask) - 1;
  slot_num++;
 }

 return 0;
}
