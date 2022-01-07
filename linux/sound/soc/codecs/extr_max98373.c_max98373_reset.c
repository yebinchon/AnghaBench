
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max98373_priv {int regmap; } ;
struct device {int dummy; } ;


 int MAX98373_R2000_SW_RESET ;
 int MAX98373_R21FF_REV_ID ;
 int MAX98373_SOFT_RESET ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void max98373_reset(struct max98373_priv *max98373, struct device *dev)
{
 int ret, reg, count;


 ret = regmap_update_bits(max98373->regmap,
  MAX98373_R2000_SW_RESET,
  MAX98373_SOFT_RESET,
  MAX98373_SOFT_RESET);
 if (ret)
  dev_err(dev, "Reset command failed. (ret:%d)\n", ret);

 count = 0;
 while (count < 3) {
  usleep_range(10000, 11000);

  ret = regmap_read(max98373->regmap,
   MAX98373_R21FF_REV_ID, &reg);
  if (!ret) {
   dev_info(dev, "Reset completed (retry:%d)\n", count);
   return;
  }
  count++;
 }
 dev_err(dev, "Reset failed. (ret:%d)\n", ret);
}
