
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smcd_cdc_msg {int dummy; } ;
struct TYPE_2__ {int peer_rmbe_idx; int peer_rmbe_size; int tx_off; int peer_rmbe_space; int peer_token; } ;
struct smc_sock {TYPE_1__ conn; } ;
struct smc_clc_msg_accept_confirm {int dmbe_idx; int token; int dmbe_size; } ;


 int atomic_set (int *,int) ;
 int smc_uncompress_bufsize (int ) ;

__attribute__((used)) static void smcd_conn_save_peer_info(struct smc_sock *smc,
         struct smc_clc_msg_accept_confirm *clc)
{
 int bufsize = smc_uncompress_bufsize(clc->dmbe_size);

 smc->conn.peer_rmbe_idx = clc->dmbe_idx;
 smc->conn.peer_token = clc->token;

 smc->conn.peer_rmbe_size = bufsize - sizeof(struct smcd_cdc_msg);
 atomic_set(&smc->conn.peer_rmbe_space, smc->conn.peer_rmbe_size);
 smc->conn.tx_off = bufsize * smc->conn.peer_rmbe_idx;
}
