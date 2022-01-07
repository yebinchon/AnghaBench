
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_asoc_utils_data {int clk_pll_a; int clk_pll_a_out0; int clk_cdev1; } ;


 int clk_put (int ) ;

void tegra_asoc_utils_fini(struct tegra_asoc_utils_data *data)
{
 clk_put(data->clk_cdev1);
 clk_put(data->clk_pll_a_out0);
 clk_put(data->clk_pll_a);
}
