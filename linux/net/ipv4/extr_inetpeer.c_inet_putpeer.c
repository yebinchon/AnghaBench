
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_peer {int rcu; int refcnt; scalar_t__ dtime; } ;
typedef scalar_t__ __u32 ;


 int call_rcu (int *,int ) ;
 int inetpeer_free_rcu ;
 scalar_t__ jiffies ;
 scalar_t__ refcount_dec_and_test (int *) ;

void inet_putpeer(struct inet_peer *p)
{
 p->dtime = (__u32)jiffies;

 if (refcount_dec_and_test(&p->refcnt))
  call_rcu(&p->rcu, inetpeer_free_rcu);
}
