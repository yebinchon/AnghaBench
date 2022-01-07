
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct azx {int dummy; } ;


 int VS_EM4L ;
 int azx_readl (struct azx*,int ) ;
 int azx_writel (struct azx*,int ,int) ;

__attribute__((used)) static void bxt_reduce_dma_latency(struct azx *chip)
{
 u32 val;

 val = azx_readl(chip, VS_EM4L);
 val &= (0x3 << 20);
 azx_writel(chip, VS_EM4L, val);
}
