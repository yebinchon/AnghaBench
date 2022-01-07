
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_micfil {int regmap; } ;
struct device {int dummy; } ;


 int MICFIL_CTRL1_MDIS_MASK ;
 int MICFIL_CTRL1_SRES ;
 int MICFIL_CTRL1_SRES_MASK ;
 int REG_MICFIL_CTRL1 ;
 int dev_err (struct device*,char*,int) ;
 struct fsl_micfil* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int fsl_micfil_reset(struct device *dev)
{
 struct fsl_micfil *micfil = dev_get_drvdata(dev);
 int ret;

 ret = regmap_update_bits(micfil->regmap,
     REG_MICFIL_CTRL1,
     MICFIL_CTRL1_MDIS_MASK,
     0);
 if (ret) {
  dev_err(dev, "failed to clear MDIS bit %d\n", ret);
  return ret;
 }

 ret = regmap_update_bits(micfil->regmap,
     REG_MICFIL_CTRL1,
     MICFIL_CTRL1_SRES_MASK,
     MICFIL_CTRL1_SRES);
 if (ret) {
  dev_err(dev, "failed to reset MICFIL: %d\n", ret);
  return ret;
 }

 return 0;
}
