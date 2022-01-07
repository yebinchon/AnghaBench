
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_out_dev {scalar_t__ io_base; int clk; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int SPDIF_DIVIDER_MASK ;
 int SPDIF_DIVIDER_SHIFT ;
 scalar_t__ SPDIF_OUT_CTRL ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spdif_out_clock(struct spdif_out_dev *host, u32 core_freq,
  u32 rate)
{
 u32 divider, ctrl;

 clk_set_rate(host->clk, core_freq);
 divider = DIV_ROUND_CLOSEST(clk_get_rate(host->clk), (rate * 128));

 ctrl = readl(host->io_base + SPDIF_OUT_CTRL);
 ctrl &= ~SPDIF_DIVIDER_MASK;
 ctrl |= (divider << SPDIF_DIVIDER_SHIFT) & SPDIF_DIVIDER_MASK;
 writel(ctrl, host->io_base + SPDIF_OUT_CTRL);
}
