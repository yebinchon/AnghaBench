
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct smc_sock {int clcsock_release_lock; struct socket* clcsock; int smc_listen_work; scalar_t__ listen_smc; } ;


 int cancel_work_sync (int *) ;
 int * current_work () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sock_release (struct socket*) ;

void smc_clcsock_release(struct smc_sock *smc)
{
 struct socket *tcp;

 if (smc->listen_smc && current_work() != &smc->smc_listen_work)
  cancel_work_sync(&smc->smc_listen_work);
 mutex_lock(&smc->clcsock_release_lock);
 if (smc->clcsock) {
  tcp = smc->clcsock;
  smc->clcsock = ((void*)0);
  sock_release(tcp);
 }
 mutex_unlock(&smc->clcsock_release_lock);
}
