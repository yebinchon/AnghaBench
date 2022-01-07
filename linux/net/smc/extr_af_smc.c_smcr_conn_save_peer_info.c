
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int token; } ;
struct TYPE_4__ {int peer_rmbe_idx; int peer_rmbe_size; int tx_off; int peer_rmbe_space; TYPE_1__ local_tx_ctrl; } ;
struct smc_sock {TYPE_2__ conn; } ;
struct smc_clc_msg_accept_confirm {int rmbe_idx; int rmbe_alert_token; int rmbe_size; } ;


 int atomic_set (int *,int) ;
 int ntohl (int ) ;
 int smc_uncompress_bufsize (int ) ;

__attribute__((used)) static void smcr_conn_save_peer_info(struct smc_sock *smc,
         struct smc_clc_msg_accept_confirm *clc)
{
 int bufsize = smc_uncompress_bufsize(clc->rmbe_size);

 smc->conn.peer_rmbe_idx = clc->rmbe_idx;
 smc->conn.local_tx_ctrl.token = ntohl(clc->rmbe_alert_token);
 smc->conn.peer_rmbe_size = bufsize;
 atomic_set(&smc->conn.peer_rmbe_space, smc->conn.peer_rmbe_size);
 smc->conn.tx_off = bufsize * (smc->conn.peer_rmbe_idx - 1);
}
