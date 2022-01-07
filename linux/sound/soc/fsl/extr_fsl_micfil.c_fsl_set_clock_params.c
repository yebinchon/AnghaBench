
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_micfil {int regmap; int mclk; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int MICFIL_CTRL2_CICOSR_MASK ;
 int MICFIL_CTRL2_CLKDIV_MASK ;
 int MICFIL_CTRL2_OSR_DEFAULT ;
 int REG_MICFIL_CTRL2 ;
 int clk_get_rate (int ) ;
 int dev_err (struct device*,char*,int ,...) ;
 struct fsl_micfil* dev_get_drvdata (struct device*) ;
 int fsl_micfil_set_mclk_rate (struct fsl_micfil*,unsigned int) ;
 int get_clk_div (struct fsl_micfil*,unsigned int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int fsl_set_clock_params(struct device *dev, unsigned int rate)
{
 struct fsl_micfil *micfil = dev_get_drvdata(dev);
 int clk_div;
 int ret = 0;

 ret = fsl_micfil_set_mclk_rate(micfil, rate);
 if (ret < 0)
  dev_err(dev, "failed to set mclk[%lu] to rate %u\n",
   clk_get_rate(micfil->mclk), rate);


 ret |= regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL2,
     MICFIL_CTRL2_CICOSR_MASK,
     MICFIL_CTRL2_OSR_DEFAULT);
 if (ret)
  dev_err(dev, "failed to set CICOSR in reg 0x%X\n",
   REG_MICFIL_CTRL2);


 clk_div = get_clk_div(micfil, rate);
 if (clk_div < 0)
  ret = -EINVAL;

 ret |= regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL2,
     MICFIL_CTRL2_CLKDIV_MASK, clk_div);
 if (ret)
  dev_err(dev, "failed to set CLKDIV in reg 0x%X\n",
   REG_MICFIL_CTRL2);

 return ret;
}
