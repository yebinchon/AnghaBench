
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_conn_abort; int peer_conn_closed; } ;
struct TYPE_4__ {TYPE_1__ conn_state_flags; } ;
struct smc_connection {TYPE_2__ local_tx_ctrl; int bytes_to_rcv; } ;


 scalar_t__ atomic_read (int *) ;
 int smc_cdc_get_slot_and_msg_send (struct smc_connection*) ;

__attribute__((used)) static int smc_close_final(struct smc_connection *conn)
{
 if (atomic_read(&conn->bytes_to_rcv))
  conn->local_tx_ctrl.conn_state_flags.peer_conn_abort = 1;
 else
  conn->local_tx_ctrl.conn_state_flags.peer_conn_closed = 1;

 return smc_cdc_get_slot_and_msg_send(conn);
}
