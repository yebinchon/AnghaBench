
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {scalar_t__ parent; int flags; int hash; } ;


 int ASSERT_RTNL () ;
 int TCQ_F_INGRESS ;
 scalar_t__ TC_H_ROOT ;
 int hash_del_rcu (int *) ;

void qdisc_hash_del(struct Qdisc *q)
{
 if ((q->parent != TC_H_ROOT) && !(q->flags & TCQ_F_INGRESS)) {
  ASSERT_RTNL();
  hash_del_rcu(&q->hash);
 }
}
