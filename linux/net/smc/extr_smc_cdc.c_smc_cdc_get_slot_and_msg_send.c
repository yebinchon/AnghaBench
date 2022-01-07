
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_connection {int send_lock; TYPE_1__* lgr; } ;
struct TYPE_2__ {scalar_t__ is_smcd; } ;


 int smcd_cdc_msg_send (struct smc_connection*) ;
 int smcr_cdc_get_slot_and_msg_send (struct smc_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int smc_cdc_get_slot_and_msg_send(struct smc_connection *conn)
{
 int rc;

 if (conn->lgr->is_smcd) {
  spin_lock_bh(&conn->send_lock);
  rc = smcd_cdc_msg_send(conn);
  spin_unlock_bh(&conn->send_lock);
 } else {
  rc = smcr_cdc_get_slot_and_msg_send(conn);
 }

 return rc;
}
