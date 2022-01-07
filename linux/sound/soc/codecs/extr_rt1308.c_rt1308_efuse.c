
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1308_priv {int regmap; } ;


 int RT1308_EFUSE_1 ;
 int RT1308_POWER_STATUS ;
 int RT1308_PVDD_OFFSET_CTL ;
 int RT1308_RESET ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rt1308_efuse(struct rt1308_priv *rt1308)
{
 regmap_write(rt1308->regmap, RT1308_RESET, 0);

 regmap_write(rt1308->regmap, RT1308_POWER_STATUS, 0x01800000);
 msleep(100);
 regmap_write(rt1308->regmap, RT1308_EFUSE_1, 0x44fe0f00);
 msleep(20);
 regmap_write(rt1308->regmap, RT1308_PVDD_OFFSET_CTL, 0x10000000);
}
