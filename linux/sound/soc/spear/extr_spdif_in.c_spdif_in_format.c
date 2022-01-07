
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spdif_in_dev {scalar_t__ io_base; } ;




 scalar_t__ SPDIF_IN_CTRL ;
 int SPDIF_XTRACT_16BIT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spdif_in_format(struct spdif_in_dev *host, u32 format)
{
 u32 ctrl = readl(host->io_base + SPDIF_IN_CTRL);

 switch (format) {
 case 128:
  ctrl |= SPDIF_XTRACT_16BIT;
  break;

 case 129:
  ctrl &= ~SPDIF_XTRACT_16BIT;
  break;
 }

 writel(ctrl, host->io_base + SPDIF_IN_CTRL);
}
