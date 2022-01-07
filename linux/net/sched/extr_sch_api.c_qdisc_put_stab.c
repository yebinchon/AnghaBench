
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_size_table {scalar_t__ refcnt; int list; } ;


 int kfree_rcu (struct qdisc_size_table*,int ) ;
 int list_del (int *) ;
 int rcu ;

void qdisc_put_stab(struct qdisc_size_table *tab)
{
 if (!tab)
  return;

 if (--tab->refcnt == 0) {
  list_del(&tab->list);
  kfree_rcu(tab, rcu);
 }
}
