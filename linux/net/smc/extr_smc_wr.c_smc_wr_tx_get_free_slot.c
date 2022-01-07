
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef size_t u32 ;
struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_tx_pend {size_t idx; struct smc_wr_tx_pend_priv priv; struct smc_link* link; int handler; void* wr_id; } ;
struct smc_wr_buf {int dummy; } ;
struct smc_rdma_wr {int dummy; } ;
struct smc_link {size_t wr_tx_cnt; scalar_t__ state; struct smc_rdma_wr* wr_tx_rdmas; struct smc_wr_buf* wr_tx_bufs; struct ib_send_wr* wr_tx_ibs; struct smc_wr_tx_pend* wr_tx_pends; int wr_tx_wait; } ;
struct ib_send_wr {void* wr_id; } ;
typedef int smc_wr_tx_handler ;


 int EBUSY ;
 int EPIPE ;
 scalar_t__ SMC_LNK_INACTIVE ;
 int SMC_WR_TX_WAIT_FREE_SLOT_TIME ;
 scalar_t__ in_softirq () ;
 int smc_get_lgr (struct smc_link*) ;
 int smc_lgr_terminate (int ) ;
 int smc_wr_tx_get_free_slot_index (struct smc_link*,size_t*) ;
 void* smc_wr_tx_get_next_wr_id (struct smc_link*) ;
 int wait_event_timeout (int ,int,int ) ;

int smc_wr_tx_get_free_slot(struct smc_link *link,
       smc_wr_tx_handler handler,
       struct smc_wr_buf **wr_buf,
       struct smc_rdma_wr **wr_rdma_buf,
       struct smc_wr_tx_pend_priv **wr_pend_priv)
{
 struct smc_wr_tx_pend *wr_pend;
 u32 idx = link->wr_tx_cnt;
 struct ib_send_wr *wr_ib;
 u64 wr_id;
 int rc;

 *wr_buf = ((void*)0);
 *wr_pend_priv = ((void*)0);
 if (in_softirq()) {
  rc = smc_wr_tx_get_free_slot_index(link, &idx);
  if (rc)
   return rc;
 } else {
  rc = wait_event_timeout(
   link->wr_tx_wait,
   link->state == SMC_LNK_INACTIVE ||
   (smc_wr_tx_get_free_slot_index(link, &idx) != -EBUSY),
   SMC_WR_TX_WAIT_FREE_SLOT_TIME);
  if (!rc) {

   smc_lgr_terminate(smc_get_lgr(link));
   return -EPIPE;
  }
  if (idx == link->wr_tx_cnt)
   return -EPIPE;
 }
 wr_id = smc_wr_tx_get_next_wr_id(link);
 wr_pend = &link->wr_tx_pends[idx];
 wr_pend->wr_id = wr_id;
 wr_pend->handler = handler;
 wr_pend->link = link;
 wr_pend->idx = idx;
 wr_ib = &link->wr_tx_ibs[idx];
 wr_ib->wr_id = wr_id;
 *wr_buf = &link->wr_tx_bufs[idx];
 if (wr_rdma_buf)
  *wr_rdma_buf = &link->wr_tx_rdmas[idx];
 *wr_pend_priv = &wr_pend->priv;
 return 0;
}
