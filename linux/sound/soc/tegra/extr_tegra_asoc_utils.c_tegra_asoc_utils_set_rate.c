
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_asoc_utils_data {int set_baseclock; int set_mclk; int dev; int clk_cdev1; int clk_pll_a_out0; int clk_pll_a; int soc; } ;


 int EINVAL ;
 int TEGRA_ASOC_UTILS_SOC_TEGRA20 ;
 int TEGRA_ASOC_UTILS_SOC_TEGRA30 ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,int) ;

int tegra_asoc_utils_set_rate(struct tegra_asoc_utils_data *data, int srate,
         int mclk)
{
 int new_baseclock;
 bool clk_change;
 int err;

 switch (srate) {
 case 11025:
 case 22050:
 case 44100:
 case 88200:
  if (data->soc == TEGRA_ASOC_UTILS_SOC_TEGRA20)
   new_baseclock = 56448000;
  else if (data->soc == TEGRA_ASOC_UTILS_SOC_TEGRA30)
   new_baseclock = 564480000;
  else
   new_baseclock = 282240000;
  break;
 case 8000:
 case 16000:
 case 32000:
 case 48000:
 case 64000:
 case 96000:
  if (data->soc == TEGRA_ASOC_UTILS_SOC_TEGRA20)
   new_baseclock = 73728000;
  else if (data->soc == TEGRA_ASOC_UTILS_SOC_TEGRA30)
   new_baseclock = 552960000;
  else
   new_baseclock = 368640000;
  break;
 default:
  return -EINVAL;
 }

 clk_change = ((new_baseclock != data->set_baseclock) ||
   (mclk != data->set_mclk));
 if (!clk_change)
  return 0;

 data->set_baseclock = 0;
 data->set_mclk = 0;

 clk_disable_unprepare(data->clk_cdev1);
 clk_disable_unprepare(data->clk_pll_a_out0);
 clk_disable_unprepare(data->clk_pll_a);

 err = clk_set_rate(data->clk_pll_a, new_baseclock);
 if (err) {
  dev_err(data->dev, "Can't set pll_a rate: %d\n", err);
  return err;
 }

 err = clk_set_rate(data->clk_pll_a_out0, mclk);
 if (err) {
  dev_err(data->dev, "Can't set pll_a_out0 rate: %d\n", err);
  return err;
 }



 err = clk_prepare_enable(data->clk_pll_a);
 if (err) {
  dev_err(data->dev, "Can't enable pll_a: %d\n", err);
  return err;
 }

 err = clk_prepare_enable(data->clk_pll_a_out0);
 if (err) {
  dev_err(data->dev, "Can't enable pll_a_out0: %d\n", err);
  return err;
 }

 err = clk_prepare_enable(data->clk_cdev1);
 if (err) {
  dev_err(data->dev, "Can't enable cdev1: %d\n", err);
  return err;
 }

 data->set_baseclock = new_baseclock;
 data->set_mclk = mclk;

 return 0;
}
