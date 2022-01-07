
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_wr_buf {int dummy; } ;
struct smc_connection {int send_lock; } ;
struct smc_cdc_tx_pend {int dummy; } ;


 int smc_cdc_get_free_slot (struct smc_connection*,struct smc_wr_buf**,int *,struct smc_cdc_tx_pend**) ;
 int smc_cdc_msg_send (struct smc_connection*,struct smc_wr_buf*,struct smc_cdc_tx_pend*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int smcr_cdc_get_slot_and_msg_send(struct smc_connection *conn)
{
 struct smc_cdc_tx_pend *pend;
 struct smc_wr_buf *wr_buf;
 int rc;

 rc = smc_cdc_get_free_slot(conn, &wr_buf, ((void*)0), &pend);
 if (rc)
  return rc;

 spin_lock_bh(&conn->send_lock);
 rc = smc_cdc_msg_send(conn, wr_buf, pend);
 spin_unlock_bh(&conn->send_lock);
 return rc;
}
