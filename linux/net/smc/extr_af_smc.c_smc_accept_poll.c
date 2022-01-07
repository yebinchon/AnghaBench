
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct smc_sock {int accept_q_lock; int accept_q; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 struct smc_sock* smc_sk (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __poll_t smc_accept_poll(struct sock *parent)
{
 struct smc_sock *isk = smc_sk(parent);
 __poll_t mask = 0;

 spin_lock(&isk->accept_q_lock);
 if (!list_empty(&isk->accept_q))
  mask = EPOLLIN | EPOLLRDNORM;
 spin_unlock(&isk->accept_q_lock);

 return mask;
}
