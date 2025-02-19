
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1011_priv {int r0_reg; int regmap; } ;


 int EINVAL ;
 int RT1011_INIT_RECIPROCAL_REG_15_0 ;
 int RT1011_INIT_RECIPROCAL_REG_24_16 ;
 int RT1011_SPK_TEMP_PROTECT_4 ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rt1011_r0_load(struct rt1011_priv *rt1011)
{
 if (!rt1011->r0_reg)
  return -EINVAL;


 regmap_write(rt1011->regmap, RT1011_INIT_RECIPROCAL_REG_24_16,
  ((rt1011->r0_reg>>16) & 0x1ff));
 regmap_write(rt1011->regmap, RT1011_INIT_RECIPROCAL_REG_15_0,
  (rt1011->r0_reg & 0xffff));
 regmap_write(rt1011->regmap, RT1011_SPK_TEMP_PROTECT_4, 0x4080);

 return 0;
}
