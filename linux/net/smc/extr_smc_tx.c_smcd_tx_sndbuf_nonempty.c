
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_cdc_producer_flags {scalar_t__ urg_data_present; scalar_t__ urg_data_pending; } ;
struct TYPE_2__ {struct smc_cdc_producer_flags prod_flags; } ;
struct smc_connection {int send_lock; TYPE_1__ local_tx_ctrl; } ;


 int smc_tx_rdma_writes (struct smc_connection*,int *) ;
 int smcd_cdc_msg_send (struct smc_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int smcd_tx_sndbuf_nonempty(struct smc_connection *conn)
{
 struct smc_cdc_producer_flags *pflags = &conn->local_tx_ctrl.prod_flags;
 int rc = 0;

 spin_lock_bh(&conn->send_lock);
 if (!pflags->urg_data_present)
  rc = smc_tx_rdma_writes(conn, ((void*)0));
 if (!rc)
  rc = smcd_cdc_msg_send(conn);

 if (!rc && pflags->urg_data_present) {
  pflags->urg_data_pending = 0;
  pflags->urg_data_present = 0;
 }
 spin_unlock_bh(&conn->send_lock);
 return rc;
}
