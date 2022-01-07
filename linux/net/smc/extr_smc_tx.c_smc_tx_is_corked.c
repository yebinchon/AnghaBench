
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int nonagle; } ;
struct smc_sock {TYPE_1__* clcsock; } ;
struct TYPE_2__ {int sk; } ;


 int TCP_NAGLE_CORK ;
 struct tcp_sock* tcp_sk (int ) ;

__attribute__((used)) static bool smc_tx_is_corked(struct smc_sock *smc)
{
 struct tcp_sock *tp = tcp_sk(smc->clcsock->sk);

 return (tp->nonagle & TCP_NAGLE_CORK) ? 1 : 0;
}
