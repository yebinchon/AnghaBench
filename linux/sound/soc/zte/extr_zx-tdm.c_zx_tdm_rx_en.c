
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int dummy; } ;


 unsigned long PROCESS_RX_EN ;
 unsigned long PROCESS_TDM_EN ;
 int REG_PROCESS_CTRL ;
 unsigned long zx_tdm_readl (struct zx_tdm_info*,int ) ;
 int zx_tdm_writel (struct zx_tdm_info*,int ,unsigned long) ;

__attribute__((used)) static void zx_tdm_rx_en(struct zx_tdm_info *tdm, bool on)
{
 unsigned long val;

 val = zx_tdm_readl(tdm, REG_PROCESS_CTRL);
 if (on)
  val |= PROCESS_RX_EN | PROCESS_TDM_EN;
 else
  val &= ~(PROCESS_RX_EN | PROCESS_TDM_EN);
 zx_tdm_writel(tdm, REG_PROCESS_CTRL, val);
}
