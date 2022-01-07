
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Qdisc {scalar_t__ parent; int flags; int handle; int hash; } ;
struct TYPE_2__ {int qdisc_hash; } ;


 int ASSERT_RTNL () ;
 int TCQ_F_INGRESS ;
 int TCQ_F_INVISIBLE ;
 scalar_t__ TC_H_ROOT ;
 int hash_add_rcu (int ,int *,int ) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;

void qdisc_hash_add(struct Qdisc *q, bool invisible)
{
 if ((q->parent != TC_H_ROOT) && !(q->flags & TCQ_F_INGRESS)) {
  ASSERT_RTNL();
  hash_add_rcu(qdisc_dev(q)->qdisc_hash, &q->hash, q->handle);
  if (invisible)
   q->flags |= TCQ_F_INVISIBLE;
 }
}
