
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int nud_state; int flags; TYPE_1__* tbl; int lock; int gc_list; } ;
struct TYPE_2__ {int lock; int gc_entries; int gc_list; } ;


 int NTF_EXT_LEARNED ;
 int NUD_PERMANENT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int write_lock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void neigh_update_gc_list(struct neighbour *n)
{
 bool on_gc_list, exempt_from_gc;

 write_lock_bh(&n->tbl->lock);
 write_lock(&n->lock);




 exempt_from_gc = n->nud_state & NUD_PERMANENT ||
    n->flags & NTF_EXT_LEARNED;
 on_gc_list = !list_empty(&n->gc_list);

 if (exempt_from_gc && on_gc_list) {
  list_del_init(&n->gc_list);
  atomic_dec(&n->tbl->gc_entries);
 } else if (!exempt_from_gc && !on_gc_list) {

  list_add_tail(&n->gc_list, &n->tbl->gc_list);
  atomic_inc(&n->tbl->gc_entries);
 }

 write_unlock(&n->lock);
 write_unlock_bh(&n->tbl->lock);
}
