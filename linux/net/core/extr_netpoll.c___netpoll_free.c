
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll {int dummy; } ;


 int ASSERT_RTNL () ;
 int __netpoll_cleanup (struct netpoll*) ;
 int kfree (struct netpoll*) ;
 int synchronize_rcu () ;

void __netpoll_free(struct netpoll *np)
{
 ASSERT_RTNL();


 synchronize_rcu();
 __netpoll_cleanup(np);
 kfree(np);
}
