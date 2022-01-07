
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* sk_write_space ) (TYPE_2__*) ;TYPE_1__* sk_socket; } ;
struct smc_sock {TYPE_2__ sk; } ;
struct TYPE_3__ {int flags; } ;


 int SOCK_NOSPACE ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ test_bit (int ,int *) ;

void smc_tx_sndbuf_nonfull(struct smc_sock *smc)
{
 if (smc->sk.sk_socket &&
     test_bit(SOCK_NOSPACE, &smc->sk.sk_socket->flags))
  smc->sk.sk_write_space(&smc->sk);
}
