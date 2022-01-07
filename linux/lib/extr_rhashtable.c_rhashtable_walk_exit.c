
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; scalar_t__ tbl; } ;
struct rhashtable_iter {TYPE_2__* ht; TYPE_1__ walker; } ;
struct TYPE_4__ {int lock; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rhashtable_walk_exit(struct rhashtable_iter *iter)
{
 spin_lock(&iter->ht->lock);
 if (iter->walker.tbl)
  list_del(&iter->walker.list);
 spin_unlock(&iter->ht->lock);
}
