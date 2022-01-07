
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int dead; TYPE_1__* tbl; int gc_list; } ;
struct TYPE_2__ {int gc_entries; } ;


 int atomic_dec (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void neigh_mark_dead(struct neighbour *n)
{
 n->dead = 1;
 if (!list_empty(&n->gc_list)) {
  list_del_init(&n->gc_list);
  atomic_dec(&n->tbl->gc_entries);
 }
}
