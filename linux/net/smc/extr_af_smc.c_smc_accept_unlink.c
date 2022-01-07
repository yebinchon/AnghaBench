
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct smc_sock {int sk; int accept_q_lock; } ;
struct TYPE_2__ {struct smc_sock* listen_smc; int accept_q; } ;


 int list_del_init (int *) ;
 int sk_acceptq_removed (int *) ;
 TYPE_1__* smc_sk (struct sock*) ;
 int sock_put (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void smc_accept_unlink(struct sock *sk)
{
 struct smc_sock *par = smc_sk(sk)->listen_smc;

 spin_lock(&par->accept_q_lock);
 list_del_init(&smc_sk(sk)->accept_q);
 spin_unlock(&par->accept_q_lock);
 sk_acceptq_removed(&smc_sk(sk)->listen_smc->sk);
 sock_put(sk);
}
