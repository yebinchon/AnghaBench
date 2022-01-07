
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; } ;
struct TYPE_4__ {int prod; } ;
struct smc_connection {int rx_off; char urg_rx_byte; TYPE_2__* rmb_desc; TYPE_3__ urg_curs; int urg_state; TYPE_1__ local_rx_ctrl; } ;
struct smc_sock {int sk; struct smc_connection conn; } ;
struct TYPE_5__ {int len; scalar_t__ cpu_addr; } ;


 int SMC_URG_VALID ;
 int SOCK_URGINLINE ;
 int sk_send_sigurg (int *) ;
 int smc_curs_copy (TYPE_3__*,int *,struct smc_connection*) ;
 int sock_flag (int *,int ) ;

__attribute__((used)) static void smc_cdc_handle_urg_data_arrival(struct smc_sock *smc,
         int *diff_prod)
{
 struct smc_connection *conn = &smc->conn;
 char *base;


 smc_curs_copy(&conn->urg_curs, &conn->local_rx_ctrl.prod, conn);
 conn->urg_state = SMC_URG_VALID;
 if (!sock_flag(&smc->sk, SOCK_URGINLINE))

  (*diff_prod)--;
 base = (char *)conn->rmb_desc->cpu_addr + conn->rx_off;
 if (conn->urg_curs.count)
  conn->urg_rx_byte = *(base + conn->urg_curs.count - 1);
 else
  conn->urg_rx_byte = *(base + conn->rmb_desc->len - 1);
 sk_send_sigurg(&smc->sk);
}
