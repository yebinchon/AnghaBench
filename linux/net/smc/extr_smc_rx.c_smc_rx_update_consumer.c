
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union smc_host_cursor {int dummy; } smc_host_cursor ;
struct sock {int dummy; } ;
struct TYPE_4__ {int cons; } ;
struct smc_connection {scalar_t__ urg_state; int urg_rx_skip_pend; TYPE_2__ local_tx_ctrl; TYPE_1__* rmb_desc; int urg_curs; } ;
struct smc_sock {struct sock sk; struct smc_connection conn; } ;
struct TYPE_3__ {int len; } ;


 void* SMC_URG_READ ;
 scalar_t__ SMC_URG_VALID ;
 int SOCK_URGINLINE ;
 int smc_curs_add (int ,union smc_host_cursor*,int) ;
 int smc_curs_comp (int ,union smc_host_cursor*,int *) ;
 int smc_curs_copy (int *,union smc_host_cursor*,struct smc_connection*) ;
 int smc_tx_consumer_update (struct smc_connection*,int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int smc_rx_update_consumer(struct smc_sock *smc,
      union smc_host_cursor cons, size_t len)
{
 struct smc_connection *conn = &smc->conn;
 struct sock *sk = &smc->sk;
 bool force = 0;
 int diff, rc = 0;

 smc_curs_add(conn->rmb_desc->len, &cons, len);


 if (conn->urg_state == SMC_URG_VALID || conn->urg_rx_skip_pend) {
  diff = smc_curs_comp(conn->rmb_desc->len, &cons,
         &conn->urg_curs);
  if (sock_flag(sk, SOCK_URGINLINE)) {
   if (diff == 0) {
    force = 1;
    rc = 1;
    conn->urg_state = SMC_URG_READ;
   }
  } else {
   if (diff == 1) {

    force = 1;
    smc_curs_add(conn->rmb_desc->len, &cons, 1);
    conn->urg_rx_skip_pend = 0;
   } else if (diff < -1)

    conn->urg_state = SMC_URG_READ;
  }
 }

 smc_curs_copy(&conn->local_tx_ctrl.cons, &cons, conn);



 smc_tx_consumer_update(conn, force);

 return rc;
}
