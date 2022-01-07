
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {struct regmap* regmap; } ;


 int REG_SPDIF_SIC ;
 int REG_SPDIF_SIE ;
 int REG_SPDIF_SIS ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static u32 spdif_intr_status_clear(struct fsl_spdif_priv *spdif_priv)
{
 struct regmap *regmap = spdif_priv->regmap;
 u32 val, val2;

 regmap_read(regmap, REG_SPDIF_SIS, &val);
 regmap_read(regmap, REG_SPDIF_SIE, &val2);

 regmap_write(regmap, REG_SPDIF_SIC, val & val2);

 return val;
}
