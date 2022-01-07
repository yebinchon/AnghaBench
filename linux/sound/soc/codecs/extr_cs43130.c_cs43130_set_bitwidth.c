
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct cs43130_bitwidth_map {int ch_bit; int sp_bit; } ;


 int CS43130_ASP_BITSIZE_MASK ;
 int CS43130_ASP_CH_1_SZ_EN ;
 int CS43130_ASP_CH_2_SZ_EN ;


 int CS43130_CH_BITSIZE_MASK ;
 int CS43130_SP_BITSIZE ;
 int CS43130_XSP_BITSIZE_MASK ;
 int CS43130_XSP_BITSIZE_SHIFT ;
 int CS43130_XSP_CH_1_SZ_EN ;
 int CS43130_XSP_CH_2_SZ_EN ;

 int EINVAL ;
 struct cs43130_bitwidth_map* cs43130_get_bitwidth_table (unsigned int) ;
 int regmap_update_bits (struct regmap*,int ,int ,int) ;

__attribute__((used)) static int cs43130_set_bitwidth(int dai_id, unsigned int bitwidth_dai,
     struct regmap *regmap)
{
 const struct cs43130_bitwidth_map *bw_map;

 bw_map = cs43130_get_bitwidth_table(bitwidth_dai);
 if (!bw_map)
  return -EINVAL;

 switch (dai_id) {
 case 129:
 case 130:
  regmap_update_bits(regmap, CS43130_ASP_CH_1_SZ_EN,
       CS43130_CH_BITSIZE_MASK, bw_map->ch_bit);
  regmap_update_bits(regmap, CS43130_ASP_CH_2_SZ_EN,
       CS43130_CH_BITSIZE_MASK, bw_map->ch_bit);
  regmap_update_bits(regmap, CS43130_SP_BITSIZE,
       CS43130_ASP_BITSIZE_MASK, bw_map->sp_bit);
  break;
 case 128:
  regmap_update_bits(regmap, CS43130_XSP_CH_1_SZ_EN,
       CS43130_CH_BITSIZE_MASK, bw_map->ch_bit);
  regmap_update_bits(regmap, CS43130_XSP_CH_2_SZ_EN,
       CS43130_CH_BITSIZE_MASK, bw_map->ch_bit);
  regmap_update_bits(regmap, CS43130_SP_BITSIZE,
       CS43130_XSP_BITSIZE_MASK, bw_map->sp_bit <<
       CS43130_XSP_BITSIZE_SHIFT);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
