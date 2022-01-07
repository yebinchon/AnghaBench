
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int JZ4740_CODEC_1_RESET ;
 int JZ4740_CODEC_1_SUSPEND ;
 int JZ4740_REG_CODEC_1 ;
 int regcache_sync (struct regmap*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void jz4740_codec_wakeup(struct regmap *regmap)
{
 regmap_update_bits(regmap, JZ4740_REG_CODEC_1,
  JZ4740_CODEC_1_RESET, JZ4740_CODEC_1_RESET);
 udelay(2);

 regmap_update_bits(regmap, JZ4740_REG_CODEC_1,
  JZ4740_CODEC_1_SUSPEND | JZ4740_CODEC_1_RESET, 0);

 regcache_sync(regmap);
}
