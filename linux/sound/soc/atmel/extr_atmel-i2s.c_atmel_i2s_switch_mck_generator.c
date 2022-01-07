
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_i2s_dev {int regmap; TYPE_1__* gck_param; int gclk; } ;
struct TYPE_2__ {int mck; int imckdiv; int imckfs; } ;


 int ATMEL_I2SC_CR ;
 int ATMEL_I2SC_CR_CKDIS ;
 int ATMEL_I2SC_CR_CKEN ;
 int ATMEL_I2SC_MR ;
 unsigned int ATMEL_I2SC_MR_IMCKDIV (int) ;
 unsigned int ATMEL_I2SC_MR_IMCKDIV_MASK ;
 unsigned int ATMEL_I2SC_MR_IMCKFS (int ) ;
 unsigned int ATMEL_I2SC_MR_IMCKFS_MASK ;
 unsigned int ATMEL_I2SC_MR_IMCKMODE_I2SMCK ;
 unsigned int ATMEL_I2SC_MR_IMCKMODE_MASK ;
 int EINVAL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int atmel_i2s_switch_mck_generator(struct atmel_i2s_dev *dev,
       bool enabled)
{
 unsigned int mr, mr_mask;
 unsigned long gclk_rate;
 int ret;

 mr = 0;
 mr_mask = (ATMEL_I2SC_MR_IMCKDIV_MASK |
     ATMEL_I2SC_MR_IMCKFS_MASK |
     ATMEL_I2SC_MR_IMCKMODE_MASK);

 if (!enabled) {

  ret = regmap_write(dev->regmap, ATMEL_I2SC_CR,
       ATMEL_I2SC_CR_CKDIS);
  if (ret)
   return ret;


  ret = regmap_update_bits(dev->regmap, ATMEL_I2SC_MR,
      mr_mask, mr);
  if (ret)
   return ret;


  clk_disable_unprepare(dev->gclk);

  return 0;
 }

 if (!dev->gck_param)
  return -EINVAL;

 gclk_rate = dev->gck_param->mck * (dev->gck_param->imckdiv + 1);

 ret = clk_set_rate(dev->gclk, gclk_rate);
 if (ret)
  return ret;

 ret = clk_prepare_enable(dev->gclk);
 if (ret)
  return ret;


 mr |= ATMEL_I2SC_MR_IMCKDIV(dev->gck_param->imckdiv);
 mr |= ATMEL_I2SC_MR_IMCKFS(dev->gck_param->imckfs);
 mr |= ATMEL_I2SC_MR_IMCKMODE_I2SMCK;
 ret = regmap_update_bits(dev->regmap, ATMEL_I2SC_MR, mr_mask, mr);
 if (ret)
  return ret;


 return regmap_write(dev->regmap, ATMEL_I2SC_CR,
       ATMEL_I2SC_CR_CKEN);
}
