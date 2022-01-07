
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int PDM_F1_CTRL ;
 int PDM_F2_CTRL ;
 int PDM_F3_CTRL ;
 unsigned int PDM_FILTER_EN ;
 int PDM_HCIC_CTRL1 ;
 int PDM_HPF_CTRL ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void axg_pdm_filters_enable(struct regmap *map, bool enable)
{
 unsigned int val = enable ? PDM_FILTER_EN : 0;

 regmap_update_bits(map, PDM_HCIC_CTRL1, PDM_FILTER_EN, val);
 regmap_update_bits(map, PDM_F1_CTRL, PDM_FILTER_EN, val);
 regmap_update_bits(map, PDM_F2_CTRL, PDM_FILTER_EN, val);
 regmap_update_bits(map, PDM_F3_CTRL, PDM_FILTER_EN, val);
 regmap_update_bits(map, PDM_HPF_CTRL, PDM_FILTER_EN, val);
}
