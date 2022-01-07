
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct smc_host_cdc_msg {int conn_state_flags; int prod_flags; int cons; int prod; int token; int seqno; int len; TYPE_1__ common; } ;
struct smc_connection {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct smc_cdc_msg {int conn_state_flags; int prod_flags; int cons; int prod; int token; int seqno; int len; TYPE_2__ common; } ;


 int ntohl (int ) ;
 int ntohs (int ) ;
 int smc_cdc_cursor_to_host (int *,int *,struct smc_connection*) ;

__attribute__((used)) static inline void smcr_cdc_msg_to_host(struct smc_host_cdc_msg *local,
     struct smc_cdc_msg *peer,
     struct smc_connection *conn)
{
 local->common.type = peer->common.type;
 local->len = peer->len;
 local->seqno = ntohs(peer->seqno);
 local->token = ntohl(peer->token);
 smc_cdc_cursor_to_host(&local->prod, &peer->prod, conn);
 smc_cdc_cursor_to_host(&local->cons, &peer->cons, conn);
 local->prod_flags = peer->prod_flags;
 local->conn_state_flags = peer->conn_state_flags;
}
