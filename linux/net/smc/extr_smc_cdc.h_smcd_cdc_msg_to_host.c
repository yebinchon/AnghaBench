
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union smc_host_cursor {int count; int wrap; } ;
struct TYPE_4__ {int conn_state_flags; int prod_flags; int count; int wrap; } ;
struct TYPE_3__ {int count; int wrap; } ;
struct smcd_cdc_msg {TYPE_2__ cons; TYPE_1__ prod; } ;
struct smc_host_cdc_msg {int conn_state_flags; int prod_flags; int cons; int prod; } ;
struct smc_connection {int dummy; } ;


 int smc_curs_copy (int *,union smc_host_cursor*,struct smc_connection*) ;

__attribute__((used)) static inline void smcd_cdc_msg_to_host(struct smc_host_cdc_msg *local,
     struct smcd_cdc_msg *peer,
     struct smc_connection *conn)
{
 union smc_host_cursor temp;

 temp.wrap = peer->prod.wrap;
 temp.count = peer->prod.count;
 smc_curs_copy(&local->prod, &temp, conn);

 temp.wrap = peer->cons.wrap;
 temp.count = peer->cons.count;
 smc_curs_copy(&local->cons, &temp, conn);
 local->prod_flags = peer->cons.prod_flags;
 local->conn_state_flags = peer->cons.conn_state_flags;
}
