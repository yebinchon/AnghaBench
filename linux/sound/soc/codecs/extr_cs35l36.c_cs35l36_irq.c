
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs35l36_private {int regmap; int dev; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int CS35L36_AMP_SHORT_ERR ;
 unsigned int CS35L36_AMP_SHORT_ERR_RLS ;
 unsigned int CS35L36_BST_DCM_UVP_ERR ;
 unsigned int CS35L36_BST_OVP_ERR ;
 unsigned int CS35L36_BST_SHORT_ERR ;
 unsigned int CS35L36_BST_SHORT_ERR_RLS ;
 unsigned int CS35L36_BST_UVP_ERR_RLS ;
 int CS35L36_INT1_MASK ;
 int CS35L36_INT1_STATUS ;
 int CS35L36_INT3_STATUS ;
 int CS35L36_PROTECT_REL_ERR ;
 unsigned int CS35L36_TEMP_ERR ;
 unsigned int CS35L36_TEMP_ERR_RLS ;
 unsigned int CS35L36_TEMP_WARN ;
 unsigned int CS35L36_TEMP_WARN_ERR_RLS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_crit (int ,char*) ;
 int regmap_bulk_read (int ,int ,unsigned int*,int ) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static irqreturn_t cs35l36_irq(int irq, void *data)
{
 struct cs35l36_private *cs35l36 = data;
 unsigned int status[4];
 unsigned int masks[4];
 int ret = IRQ_NONE;


 regmap_bulk_read(cs35l36->regmap, CS35L36_INT1_STATUS, status,
    ARRAY_SIZE(status));

 regmap_bulk_read(cs35l36->regmap, CS35L36_INT1_MASK, masks,
    ARRAY_SIZE(masks));


 if (!(status[0] & ~masks[0]) && !(status[1] & ~masks[1]) &&
  !(status[2] & ~masks[2]) && !(status[3] & ~masks[3])) {
  return IRQ_NONE;
 }






 if (status[2] & CS35L36_AMP_SHORT_ERR) {
  dev_crit(cs35l36->dev, "Amp short error\n");
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_AMP_SHORT_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_AMP_SHORT_ERR_RLS,
       CS35L36_AMP_SHORT_ERR_RLS);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_AMP_SHORT_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_INT3_STATUS,
       CS35L36_AMP_SHORT_ERR,
       CS35L36_AMP_SHORT_ERR);
  ret = IRQ_HANDLED;
 }

 if (status[0] & CS35L36_TEMP_WARN) {
  dev_crit(cs35l36->dev, "Over temperature warning\n");
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_WARN_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_WARN_ERR_RLS,
       CS35L36_TEMP_WARN_ERR_RLS);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_WARN_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_INT1_STATUS,
       CS35L36_TEMP_WARN, CS35L36_TEMP_WARN);
  ret = IRQ_HANDLED;
 }

 if (status[0] & CS35L36_TEMP_ERR) {
  dev_crit(cs35l36->dev, "Over temperature error\n");
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_ERR_RLS, CS35L36_TEMP_ERR_RLS);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_INT1_STATUS,
       CS35L36_TEMP_ERR, CS35L36_TEMP_ERR);
  ret = IRQ_HANDLED;
 }

 if (status[0] & CS35L36_BST_OVP_ERR) {
  dev_crit(cs35l36->dev, "VBST Over Voltage error\n");
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_ERR_RLS, CS35L36_TEMP_ERR_RLS);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_TEMP_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_INT1_STATUS,
       CS35L36_BST_OVP_ERR, CS35L36_BST_OVP_ERR);
  ret = IRQ_HANDLED;
 }

 if (status[0] & CS35L36_BST_DCM_UVP_ERR) {
  dev_crit(cs35l36->dev, "DCM VBST Under Voltage Error\n");
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_BST_UVP_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_BST_UVP_ERR_RLS,
       CS35L36_BST_UVP_ERR_RLS);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_BST_UVP_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_INT1_STATUS,
       CS35L36_BST_DCM_UVP_ERR,
       CS35L36_BST_DCM_UVP_ERR);
  ret = IRQ_HANDLED;
 }

 if (status[0] & CS35L36_BST_SHORT_ERR) {
  dev_crit(cs35l36->dev, "LBST SHORT error!\n");
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_BST_SHORT_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_BST_SHORT_ERR_RLS,
       CS35L36_BST_SHORT_ERR_RLS);
  regmap_update_bits(cs35l36->regmap, CS35L36_PROTECT_REL_ERR,
       CS35L36_BST_SHORT_ERR_RLS, 0);
  regmap_update_bits(cs35l36->regmap, CS35L36_INT1_STATUS,
       CS35L36_BST_SHORT_ERR,
       CS35L36_BST_SHORT_ERR);
  ret = IRQ_HANDLED;
 }

 return ret;
}
