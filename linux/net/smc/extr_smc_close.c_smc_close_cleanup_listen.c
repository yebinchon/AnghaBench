
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 struct sock* smc_accept_dequeue (struct sock*,int *) ;
 int smc_close_non_accepted (struct sock*) ;

__attribute__((used)) static void smc_close_cleanup_listen(struct sock *parent)
{
 struct sock *sk;


 while ((sk = smc_accept_dequeue(parent, ((void*)0))))
  smc_close_non_accepted(sk);
}
