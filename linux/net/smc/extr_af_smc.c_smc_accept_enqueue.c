
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct smc_sock {int accept_q_lock; int accept_q; } ;


 int list_add_tail (int *,int *) ;
 int sk_acceptq_added (struct sock*) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int sock_hold (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void smc_accept_enqueue(struct sock *parent, struct sock *sk)
{
 struct smc_sock *par = smc_sk(parent);

 sock_hold(sk);
 spin_lock(&par->accept_q_lock);
 list_add_tail(&smc_sk(sk)->accept_q, &par->accept_q);
 spin_unlock(&par->accept_q_lock);
 sk_acceptq_added(parent);
}
