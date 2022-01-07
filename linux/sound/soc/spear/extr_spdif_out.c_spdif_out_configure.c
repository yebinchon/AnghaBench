
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdif_out_dev {scalar_t__ io_base; } ;


 scalar_t__ SPDIF_OUT_CFG ;
 int SPDIF_OUT_CHNLSTA_HW ;
 int SPDIF_OUT_FDMA_TRIG_16 ;
 scalar_t__ SPDIF_OUT_INT_EN_CLR ;
 scalar_t__ SPDIF_OUT_INT_STA_CLR ;
 int SPDIF_OUT_MEMFMT_16_16 ;
 int SPDIF_OUT_PARITY_HW ;
 int SPDIF_OUT_RESET ;
 scalar_t__ SPDIF_OUT_SOFT_RST ;
 int SPDIF_OUT_USER_HW ;
 int SPDIF_OUT_VALID_HW ;
 int mdelay (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spdif_out_configure(struct spdif_out_dev *host)
{
 writel(SPDIF_OUT_RESET, host->io_base + SPDIF_OUT_SOFT_RST);
 mdelay(1);
 writel(readl(host->io_base + SPDIF_OUT_SOFT_RST) & ~SPDIF_OUT_RESET,
   host->io_base + SPDIF_OUT_SOFT_RST);

 writel(SPDIF_OUT_FDMA_TRIG_16 | SPDIF_OUT_MEMFMT_16_16 |
   SPDIF_OUT_VALID_HW | SPDIF_OUT_USER_HW |
   SPDIF_OUT_CHNLSTA_HW | SPDIF_OUT_PARITY_HW,
   host->io_base + SPDIF_OUT_CFG);

 writel(0x7F, host->io_base + SPDIF_OUT_INT_STA_CLR);
 writel(0x7F, host->io_base + SPDIF_OUT_INT_EN_CLR);
}
