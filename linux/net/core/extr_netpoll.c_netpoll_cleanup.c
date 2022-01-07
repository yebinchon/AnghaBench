
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll {int * dev; } ;


 int __netpoll_cleanup (struct netpoll*) ;
 int dev_put (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void netpoll_cleanup(struct netpoll *np)
{
 rtnl_lock();
 if (!np->dev)
  goto out;
 __netpoll_cleanup(np);
 dev_put(np->dev);
 np->dev = ((void*)0);
out:
 rtnl_unlock();
}
