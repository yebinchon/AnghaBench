
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mchp_i2s_mcc_dev {unsigned int sysclk; struct clk* gclk; struct clk* pclk; int dev; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 unsigned long GENMASK (int,int ) ;
 unsigned int MCHP_I2SMCC_MRA_IMCKDIV (unsigned long) ;
 unsigned int MCHP_I2SMCC_MRA_ISCKDIV (unsigned long) ;
 unsigned int MCHP_I2SMCC_MRA_SRCCLK_GCLK ;
 unsigned int MCHP_I2SMCC_MRA_SRCCLK_PCLK ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 unsigned long lcm (unsigned int,unsigned int) ;
 int mchp_i2s_mcc_clk_get_rate_diff (struct clk*,unsigned long,struct clk**,unsigned long*,unsigned long*) ;

__attribute__((used)) static int mchp_i2s_mcc_config_divs(struct mchp_i2s_mcc_dev *dev,
        unsigned int bclk, unsigned int *mra,
        unsigned long *best_rate)
{
 unsigned long clk_rate;
 unsigned long lcm_rate;
 unsigned long best_diff_rate = ~0;
 unsigned int sysclk;
 struct clk *best_clk = ((void*)0);
 int ret;


 if (!dev->sysclk)
  sysclk = bclk;
 else
  sysclk = dev->sysclk;






 lcm_rate = lcm(sysclk, bclk);
 if ((lcm_rate / sysclk % 2 == 1 && lcm_rate / sysclk > 2) ||
     (lcm_rate / bclk % 2 == 1 && lcm_rate / bclk > 2))
  lcm_rate *= 2;

 for (clk_rate = lcm_rate;
      (clk_rate == sysclk || clk_rate / (sysclk * 2) <= GENMASK(5, 0)) &&
      (clk_rate == bclk || clk_rate / (bclk * 2) <= GENMASK(5, 0));
      clk_rate += lcm_rate) {
  ret = mchp_i2s_mcc_clk_get_rate_diff(dev->gclk, clk_rate,
           &best_clk, best_rate,
           &best_diff_rate);
  if (ret) {
   dev_err(dev->dev, "gclk error for rate %lu: %d",
    clk_rate, ret);
  } else {
   if (!best_diff_rate) {
    dev_dbg(dev->dev, "found perfect rate on gclk: %lu\n",
     clk_rate);
    break;
   }
  }

  ret = mchp_i2s_mcc_clk_get_rate_diff(dev->pclk, clk_rate,
           &best_clk, best_rate,
           &best_diff_rate);
  if (ret) {
   dev_err(dev->dev, "pclk error for rate %lu: %d",
    clk_rate, ret);
  } else {
   if (!best_diff_rate) {
    dev_dbg(dev->dev, "found perfect rate on pclk: %lu\n",
     clk_rate);
    break;
   }
  }
 }


 if (!best_clk) {
  dev_err(dev->dev, "unable to change rate to clocks\n");
  return -EINVAL;
 }

 dev_dbg(dev->dev, "source CLK is %s with rate %lu, diff %lu\n",
  best_clk == dev->pclk ? "pclk" : "gclk",
  *best_rate, best_diff_rate);


 if (dev->sysclk)
  *mra |= MCHP_I2SMCC_MRA_IMCKDIV(*best_rate / (2 * sysclk));
 *mra |= MCHP_I2SMCC_MRA_ISCKDIV(*best_rate / (2 * bclk));

 if (best_clk == dev->gclk)
  *mra |= MCHP_I2SMCC_MRA_SRCCLK_GCLK;
 else
  *mra |= MCHP_I2SMCC_MRA_SRCCLK_PCLK;

 return 0;
}
