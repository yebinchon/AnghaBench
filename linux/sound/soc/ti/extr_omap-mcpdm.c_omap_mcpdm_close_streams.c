
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mcpdm {scalar_t__ dn_rx_offset; } ;


 int MCPDM_DMA_DN_ENABLE ;
 int MCPDM_DMA_UP_ENABLE ;
 int MCPDM_DN_IRQ_EMPTY ;
 int MCPDM_DN_IRQ_FULL ;
 int MCPDM_REG_DMAENABLE_CLR ;
 int MCPDM_REG_DN_OFFSET ;
 int MCPDM_REG_IRQENABLE_CLR ;
 int MCPDM_UP_IRQ_EMPTY ;
 int MCPDM_UP_IRQ_FULL ;
 int omap_mcpdm_write (struct omap_mcpdm*,int ,int) ;

__attribute__((used)) static void omap_mcpdm_close_streams(struct omap_mcpdm *mcpdm)
{

 omap_mcpdm_write(mcpdm, MCPDM_REG_IRQENABLE_CLR,
   MCPDM_DN_IRQ_EMPTY | MCPDM_DN_IRQ_FULL);


 omap_mcpdm_write(mcpdm, MCPDM_REG_DMAENABLE_CLR, MCPDM_DMA_DN_ENABLE);


 omap_mcpdm_write(mcpdm, MCPDM_REG_IRQENABLE_CLR,
   MCPDM_UP_IRQ_EMPTY | MCPDM_UP_IRQ_FULL);


 omap_mcpdm_write(mcpdm, MCPDM_REG_DMAENABLE_CLR, MCPDM_DMA_UP_ENABLE);


 if (mcpdm->dn_rx_offset)
  omap_mcpdm_write(mcpdm, MCPDM_REG_DN_OFFSET, 0);
}
