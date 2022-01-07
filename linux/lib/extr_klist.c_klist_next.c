
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* next; } ;
struct klist_node {TYPE_1__ n_node; int n_ref; } ;
struct klist_iter {struct klist_node* i_cur; TYPE_2__* i_klist; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {void (* put ) (struct klist_node*) ;int k_lock; TYPE_3__ k_list; } ;


 int klist_dec_and_del (struct klist_node*) ;
 int knode_dead (struct klist_node*) ;
 int kref_get (int *) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct klist_node* to_klist_node (TYPE_3__*) ;

struct klist_node *klist_next(struct klist_iter *i)
{
 void (*put)(struct klist_node *) = i->i_klist->put;
 struct klist_node *last = i->i_cur;
 struct klist_node *next;
 unsigned long flags;

 spin_lock_irqsave(&i->i_klist->k_lock, flags);

 if (last) {
  next = to_klist_node(last->n_node.next);
  if (!klist_dec_and_del(last))
   put = ((void*)0);
 } else
  next = to_klist_node(i->i_klist->k_list.next);

 i->i_cur = ((void*)0);
 while (next != to_klist_node(&i->i_klist->k_list)) {
  if (likely(!knode_dead(next))) {
   kref_get(&next->n_ref);
   i->i_cur = next;
   break;
  }
  next = to_klist_node(next->n_node.next);
 }

 spin_unlock_irqrestore(&i->i_klist->k_lock, flags);

 if (put && last)
  put(last);
 return i->i_cur;
}
