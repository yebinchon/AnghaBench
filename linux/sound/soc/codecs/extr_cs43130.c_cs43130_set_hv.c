
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u16 ;
struct regmap {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CS43130_DC_THRESHOLD ;
 int * hv_seq ;
 int regmap_multi_reg_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int cs43130_set_hv(struct regmap *regmap, u16 hpload_dc,
     const u16 *dc_threshold)
{
 int i;

 for (i = 0; i < CS43130_DC_THRESHOLD; i++) {
  if (hpload_dc <= dc_threshold[i])
   break;
 }

 regmap_multi_reg_write(regmap, hv_seq[i], ARRAY_SIZE(hv_seq[i]));

 return 0;
}
