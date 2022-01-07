
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neigh_parms {int dead; int rcu_head; scalar_t__ dev; int list; } ;
struct neigh_table {int lock; struct neigh_parms parms; } ;


 int call_rcu (int *,int ) ;
 int dev_put (scalar_t__) ;
 int list_del (int *) ;
 int neigh_rcu_free_parms ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void neigh_parms_release(struct neigh_table *tbl, struct neigh_parms *parms)
{
 if (!parms || parms == &tbl->parms)
  return;
 write_lock_bh(&tbl->lock);
 list_del(&parms->list);
 parms->dead = 1;
 write_unlock_bh(&tbl->lock);
 if (parms->dev)
  dev_put(parms->dev);
 call_rcu(&parms->rcu_head, neigh_rcu_free_parms);
}
