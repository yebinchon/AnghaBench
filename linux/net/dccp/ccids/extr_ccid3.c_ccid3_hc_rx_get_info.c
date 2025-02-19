
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_info {int tcpi_rcv_rtt; int tcpi_options; int tcpi_ca_state; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int rx_rtt; int rx_state; } ;


 int TCPI_OPT_TIMESTAMPS ;
 TYPE_1__* ccid3_hc_rx_sk (struct sock*) ;

__attribute__((used)) static void ccid3_hc_rx_get_info(struct sock *sk, struct tcp_info *info)
{
 info->tcpi_ca_state = ccid3_hc_rx_sk(sk)->rx_state;
 info->tcpi_options |= TCPI_OPT_TIMESTAMPS;
 info->tcpi_rcv_rtt = ccid3_hc_rx_sk(sk)->rx_rtt;
}
