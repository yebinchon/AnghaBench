
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_saif {scalar_t__ mclk_in_use; scalar_t__ base; int clk; int dev; } ;


 int BM_SAIF_CTRL_CLKGATE ;
 int BM_SAIF_CTRL_RUN ;
 int BM_SAIF_STAT_BUSY ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ MXS_CLR_ADDR ;
 scalar_t__ MXS_SET_ADDR ;
 scalar_t__ SAIF_CTRL ;
 scalar_t__ SAIF_STAT ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int ,char*) ;
 struct mxs_saif** mxs_saif ;

int mxs_saif_put_mclk(unsigned int saif_id)
{
 struct mxs_saif *saif = mxs_saif[saif_id];
 u32 stat;

 if (!saif)
  return -EINVAL;

 stat = __raw_readl(saif->base + SAIF_STAT);
 if (stat & BM_SAIF_STAT_BUSY) {
  dev_err(saif->dev, "error: busy\n");
  return -EBUSY;
 }

 clk_disable_unprepare(saif->clk);


 __raw_writel(BM_SAIF_CTRL_CLKGATE,
  saif->base + SAIF_CTRL + MXS_SET_ADDR);
 __raw_writel(BM_SAIF_CTRL_RUN,
  saif->base + SAIF_CTRL + MXS_CLR_ADDR);

 saif->mclk_in_use = 0;
 return 0;
}
