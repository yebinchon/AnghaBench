
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct smc_sock {TYPE_2__* clcsock; } ;
struct TYPE_6__ {TYPE_1__* sk_prot; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct TYPE_4__ {int (* keepalive ) (TYPE_3__*,int) ;} ;


 struct smc_sock* smc_sk (struct sock*) ;
 int stub1 (TYPE_3__*,int) ;

__attribute__((used)) static void smc_set_keepalive(struct sock *sk, int val)
{
 struct smc_sock *smc = smc_sk(sk);

 smc->clcsock->sk->sk_prot->keepalive(smc->clcsock->sk, val);
}
