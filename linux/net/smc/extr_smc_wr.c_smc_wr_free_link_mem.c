
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int * wr_rx_bufs; int * wr_tx_bufs; int * wr_tx_ibs; int * wr_rx_ibs; int * wr_tx_rdmas; int * wr_rx_sges; int * wr_tx_rdma_sges; int * wr_tx_sges; int * wr_tx_mask; int * wr_tx_pends; } ;


 int kfree (int *) ;

void smc_wr_free_link_mem(struct smc_link *lnk)
{
 kfree(lnk->wr_tx_pends);
 lnk->wr_tx_pends = ((void*)0);
 kfree(lnk->wr_tx_mask);
 lnk->wr_tx_mask = ((void*)0);
 kfree(lnk->wr_tx_sges);
 lnk->wr_tx_sges = ((void*)0);
 kfree(lnk->wr_tx_rdma_sges);
 lnk->wr_tx_rdma_sges = ((void*)0);
 kfree(lnk->wr_rx_sges);
 lnk->wr_rx_sges = ((void*)0);
 kfree(lnk->wr_tx_rdmas);
 lnk->wr_tx_rdmas = ((void*)0);
 kfree(lnk->wr_rx_ibs);
 lnk->wr_rx_ibs = ((void*)0);
 kfree(lnk->wr_tx_ibs);
 lnk->wr_tx_ibs = ((void*)0);
 kfree(lnk->wr_tx_bufs);
 lnk->wr_tx_bufs = ((void*)0);
 kfree(lnk->wr_rx_bufs);
 lnk->wr_rx_bufs = ((void*)0);
}
