
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_asoc_utils_data {int set_baseclock; int set_mclk; int dev; int clk_cdev1; int clk_pll_a_out0; int clk_pll_a; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int const) ;
 int dev_err (int ,char*,int) ;

int tegra_asoc_utils_set_ac97_rate(struct tegra_asoc_utils_data *data)
{
 const int pll_rate = 73728000;
 const int ac97_rate = 24576000;
 int err;

 clk_disable_unprepare(data->clk_cdev1);
 clk_disable_unprepare(data->clk_pll_a_out0);
 clk_disable_unprepare(data->clk_pll_a);





 err = clk_set_rate(data->clk_pll_a, pll_rate);
 if (err) {
  dev_err(data->dev, "Can't set pll_a rate: %d\n", err);
  return err;
 }

 err = clk_set_rate(data->clk_pll_a_out0, ac97_rate);
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

 data->set_baseclock = pll_rate;
 data->set_mclk = ac97_rate;

 return 0;
}
