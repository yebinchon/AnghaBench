
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ regs; scalar_t__ lp_tx_addr; } ;


 scalar_t__ I2STRNCNT ;
 TYPE_1__ idma ;
 int readl (scalar_t__) ;

__attribute__((used)) static void idma_getpos(dma_addr_t *src)
{
 *src = idma.lp_tx_addr +
  (readl(idma.regs + I2STRNCNT) & 0xffffff) * 4;
}
