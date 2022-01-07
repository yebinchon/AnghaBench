
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union smc_host_cursor {int dummy; } smc_host_cursor ;
struct TYPE_4__ {int type; } ;
struct smc_host_cdc_msg {int conn_state_flags; int prod_flags; int cons; int prod; int token; int seqno; int len; TYPE_2__ common; } ;
struct smc_connection {struct smc_host_cdc_msg local_tx_ctrl; } ;
struct TYPE_3__ {int type; } ;
struct smc_cdc_msg {int conn_state_flags; int prod_flags; int cons; int prod; int token; int seqno; int len; TYPE_1__ common; } ;


 int htonl (int ) ;
 int htons (int ) ;
 int smc_host_cursor_to_cdc (int *,int *,union smc_host_cursor*,struct smc_connection*) ;

__attribute__((used)) static inline void smc_host_msg_to_cdc(struct smc_cdc_msg *peer,
           struct smc_connection *conn,
           union smc_host_cursor *save)
{
 struct smc_host_cdc_msg *local = &conn->local_tx_ctrl;

 peer->common.type = local->common.type;
 peer->len = local->len;
 peer->seqno = htons(local->seqno);
 peer->token = htonl(local->token);
 smc_host_cursor_to_cdc(&peer->prod, &local->prod, save, conn);
 smc_host_cursor_to_cdc(&peer->cons, &local->cons, save, conn);
 peer->prod_flags = local->prod_flags;
 peer->conn_state_flags = local->conn_state_flags;
}
