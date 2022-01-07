
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxs_saif {int mclk_in_use; scalar_t__ base; int clk; int dev; } ;


 int BM_SAIF_CTRL_CLKGATE ;
 int BM_SAIF_CTRL_RUN ;
 int BM_SAIF_CTRL_SFTRST ;
 int BM_SAIF_STAT_BUSY ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ MXS_CLR_ADDR ;
 scalar_t__ MXS_SET_ADDR ;
 scalar_t__ SAIF_CTRL ;
 scalar_t__ SAIF_STAT ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 struct mxs_saif** mxs_saif ;
 struct mxs_saif* mxs_saif_get_master (struct mxs_saif*) ;
 int mxs_saif_set_clk (struct mxs_saif*,unsigned int,unsigned int) ;

int mxs_saif_get_mclk(unsigned int saif_id, unsigned int mclk,
     unsigned int rate)
{
 struct mxs_saif *saif = mxs_saif[saif_id];
 u32 stat;
 int ret;
 struct mxs_saif *master_saif;

 if (!saif)
  return -EINVAL;


 __raw_writel(BM_SAIF_CTRL_SFTRST,
  saif->base + SAIF_CTRL + MXS_CLR_ADDR);


 __raw_writel(BM_SAIF_CTRL_CLKGATE,
  saif->base + SAIF_CTRL + MXS_CLR_ADDR);

 master_saif = mxs_saif_get_master(saif);
 if (saif != master_saif) {
  dev_err(saif->dev, "can not get mclk from a non-master saif\n");
  return -EINVAL;
 }

 stat = __raw_readl(saif->base + SAIF_STAT);
 if (stat & BM_SAIF_STAT_BUSY) {
  dev_err(saif->dev, "error: busy\n");
  return -EBUSY;
 }

 saif->mclk_in_use = 1;
 ret = mxs_saif_set_clk(saif, mclk, rate);
 if (ret)
  return ret;

 ret = clk_prepare_enable(saif->clk);
 if (ret)
  return ret;


 __raw_writel(BM_SAIF_CTRL_RUN,
  saif->base + SAIF_CTRL + MXS_SET_ADDR);

 return 0;
}
