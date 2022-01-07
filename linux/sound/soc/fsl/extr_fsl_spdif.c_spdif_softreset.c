
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct fsl_spdif_priv {struct regmap* regmap; } ;


 int EBUSY ;
 int REG_SPDIF_SCR ;
 int SCR_SOFT_RESET ;
 int regcache_cache_bypass (struct regmap*,int) ;
 int regcache_mark_dirty (struct regmap*) ;
 int regcache_sync (struct regmap*) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int spdif_softreset(struct fsl_spdif_priv *spdif_priv)
{
 struct regmap *regmap = spdif_priv->regmap;
 u32 val, cycle = 1000;

 regcache_cache_bypass(regmap, 1);

 regmap_write(regmap, REG_SPDIF_SCR, SCR_SOFT_RESET);





 do {
  regmap_read(regmap, REG_SPDIF_SCR, &val);
 } while ((val & SCR_SOFT_RESET) && cycle--);

 regcache_cache_bypass(regmap, 0);
 regcache_mark_dirty(regmap);
 regcache_sync(regmap);

 if (cycle)
  return 0;
 else
  return -EBUSY;
}
