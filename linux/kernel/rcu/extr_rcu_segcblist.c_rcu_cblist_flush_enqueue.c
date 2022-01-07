
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {struct rcu_head* next; } ;
struct rcu_cblist {scalar_t__ len_lazy; int len; struct rcu_head** tail; struct rcu_head* head; } ;


 int WRITE_ONCE (int ,int) ;
 int rcu_cblist_init (struct rcu_cblist*) ;

void rcu_cblist_flush_enqueue(struct rcu_cblist *drclp,
         struct rcu_cblist *srclp,
         struct rcu_head *rhp)
{
 drclp->head = srclp->head;
 if (drclp->head)
  drclp->tail = srclp->tail;
 else
  drclp->tail = &drclp->head;
 drclp->len = srclp->len;
 drclp->len_lazy = srclp->len_lazy;
 if (!rhp) {
  rcu_cblist_init(srclp);
 } else {
  rhp->next = ((void*)0);
  srclp->head = rhp;
  srclp->tail = &rhp->next;
  WRITE_ONCE(srclp->len, 1);
  srclp->len_lazy = 0;
 }
}
