
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs35l36_vpbr_cfg {int vpbr_en; int vpbr_thld; int vpbr_max_attn; int vpbr_atk_vol; int vpbr_atk_rate; int vpbr_wait; int vpbr_rel_rate; int vpbr_mute_en; } ;
struct cs35l36_platform_data {struct cs35l36_vpbr_cfg vpbr_config; } ;
struct cs35l36_private {int regmap; struct cs35l36_platform_data pdata; } ;


 int CS35L36_PWR_CTRL3 ;
 int CS35L36_VPBR_ATK_RATE_MASK ;
 int CS35L36_VPBR_ATK_RATE_SHIFT ;
 int CS35L36_VPBR_ATK_VOL_MASK ;
 int CS35L36_VPBR_ATK_VOL_SHIFT ;
 int CS35L36_VPBR_CFG ;
 int CS35L36_VPBR_EN_MASK ;
 int CS35L36_VPBR_EN_SHIFT ;
 int CS35L36_VPBR_MAX_ATTN_MASK ;
 int CS35L36_VPBR_MAX_ATTN_SHIFT ;
 int CS35L36_VPBR_MUTE_EN_MASK ;
 int CS35L36_VPBR_MUTE_EN_SHIFT ;
 int CS35L36_VPBR_REL_RATE_MASK ;
 int CS35L36_VPBR_REL_RATE_SHIFT ;
 int CS35L36_VPBR_THLD_MASK ;
 int CS35L36_VPBR_THLD_SHIFT ;
 int CS35L36_VPBR_WAIT_MASK ;
 int CS35L36_VPBR_WAIT_SHIFT ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void cs35l36_apply_vpbr_config(struct cs35l36_private *cs35l36)
{
 struct cs35l36_platform_data *pdata = &cs35l36->pdata;
 struct cs35l36_vpbr_cfg *vpbr_config = &pdata->vpbr_config;

 regmap_update_bits(cs35l36->regmap, CS35L36_PWR_CTRL3,
      CS35L36_VPBR_EN_MASK,
      vpbr_config->vpbr_en <<
      CS35L36_VPBR_EN_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_THLD_MASK,
      vpbr_config->vpbr_thld <<
      CS35L36_VPBR_THLD_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_MAX_ATTN_MASK,
      vpbr_config->vpbr_max_attn <<
      CS35L36_VPBR_MAX_ATTN_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_ATK_VOL_MASK,
      vpbr_config->vpbr_atk_vol <<
      CS35L36_VPBR_ATK_VOL_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_ATK_RATE_MASK,
      vpbr_config->vpbr_atk_rate <<
      CS35L36_VPBR_ATK_RATE_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_WAIT_MASK,
      vpbr_config->vpbr_wait <<
      CS35L36_VPBR_WAIT_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_REL_RATE_MASK,
      vpbr_config->vpbr_rel_rate <<
      CS35L36_VPBR_REL_RATE_SHIFT);
 regmap_update_bits(cs35l36->regmap, CS35L36_VPBR_CFG,
      CS35L36_VPBR_MUTE_EN_MASK,
      vpbr_config->vpbr_mute_en <<
      CS35L36_VPBR_MUTE_EN_SHIFT);
}
