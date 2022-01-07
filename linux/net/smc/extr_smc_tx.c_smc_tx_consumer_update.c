
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union smc_host_cursor {int dummy; } smc_host_cursor ;
struct TYPE_7__ {scalar_t__ write_blocked; scalar_t__ cons_curs_upd_req; } ;
struct TYPE_8__ {TYPE_3__ prod_flags; int prod; } ;
struct TYPE_5__ {int cons; } ;
struct smc_connection {int rmbe_update_limit; TYPE_4__ local_rx_ctrl; int bytes_to_rcv; int tx_work; scalar_t__ alert_token_local; TYPE_2__* rmb_desc; int rx_curs_confirmed; TYPE_1__ local_tx_ctrl; } ;
struct TYPE_6__ {int len; } ;


 int SMC_TX_WORK_DELAY ;
 int atomic_read (int *) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ smc_cdc_get_slot_and_msg_send (struct smc_connection*) ;
 int smc_curs_copy (union smc_host_cursor*,int *,struct smc_connection*) ;
 int smc_curs_diff (int,union smc_host_cursor*,union smc_host_cursor*) ;
 int smc_curs_diff_large (int,union smc_host_cursor*,union smc_host_cursor*) ;

void smc_tx_consumer_update(struct smc_connection *conn, bool force)
{
 union smc_host_cursor cfed, cons, prod;
 int sender_free = conn->rmb_desc->len;
 int to_confirm;

 smc_curs_copy(&cons, &conn->local_tx_ctrl.cons, conn);
 smc_curs_copy(&cfed, &conn->rx_curs_confirmed, conn);
 to_confirm = smc_curs_diff(conn->rmb_desc->len, &cfed, &cons);
 if (to_confirm > conn->rmbe_update_limit) {
  smc_curs_copy(&prod, &conn->local_rx_ctrl.prod, conn);
  sender_free = conn->rmb_desc->len -
         smc_curs_diff_large(conn->rmb_desc->len,
        &cfed, &prod);
 }

 if (conn->local_rx_ctrl.prod_flags.cons_curs_upd_req ||
     force ||
     ((to_confirm > conn->rmbe_update_limit) &&
      ((sender_free <= (conn->rmb_desc->len / 2)) ||
       conn->local_rx_ctrl.prod_flags.write_blocked))) {
  if ((smc_cdc_get_slot_and_msg_send(conn) < 0) &&
      conn->alert_token_local) {
   schedule_delayed_work(&conn->tx_work,
           SMC_TX_WORK_DELAY);
   return;
  }
 }
 if (conn->local_rx_ctrl.prod_flags.write_blocked &&
     !atomic_read(&conn->bytes_to_rcv))
  conn->local_rx_ctrl.prod_flags.write_blocked = 0;
}
