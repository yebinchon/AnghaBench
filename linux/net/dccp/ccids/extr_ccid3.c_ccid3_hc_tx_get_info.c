
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_info {int tcpi_rtt; int tcpi_rto; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int tx_rtt; int tx_t_rto; } ;


 TYPE_1__* ccid3_hc_tx_sk (struct sock*) ;

__attribute__((used)) static void ccid3_hc_tx_get_info(struct sock *sk, struct tcp_info *info)
{
 info->tcpi_rto = ccid3_hc_tx_sk(sk)->tx_t_rto;
 info->tcpi_rtt = ccid3_hc_tx_sk(sk)->tx_rtt;
}
