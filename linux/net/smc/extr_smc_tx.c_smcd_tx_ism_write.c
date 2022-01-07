
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct smc_ism_position {int signal; scalar_t__ offset; int index; int token; } ;
struct TYPE_5__ {int peer_conn_abort; } ;
struct TYPE_6__ {TYPE_2__ conn_state_flags; } ;
struct smc_connection {TYPE_3__ local_tx_ctrl; TYPE_1__* lgr; scalar_t__ tx_off; int peer_rmbe_idx; int peer_token; } ;
typedef int pos ;
struct TYPE_4__ {int smcd; } ;


 int memset (struct smc_ism_position*,int ,int) ;
 int smc_ism_write (int ,struct smc_ism_position*,void*,size_t) ;

int smcd_tx_ism_write(struct smc_connection *conn, void *data, size_t len,
        u32 offset, int signal)
{
 struct smc_ism_position pos;
 int rc;

 memset(&pos, 0, sizeof(pos));
 pos.token = conn->peer_token;
 pos.index = conn->peer_rmbe_idx;
 pos.offset = conn->tx_off + offset;
 pos.signal = signal;
 rc = smc_ism_write(conn->lgr->smcd, &pos, data, len);
 if (rc)
  conn->local_tx_ctrl.conn_state_flags.peer_conn_abort = 1;
 return rc;
}
