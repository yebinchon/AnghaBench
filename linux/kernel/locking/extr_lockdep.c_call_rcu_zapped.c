
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pending_free {int zapped; } ;
struct TYPE_2__ {int scheduled; int index; int rcu_head; struct pending_free* pf; } ;


 int WARN_ON_ONCE (int) ;
 int call_rcu (int *,int ) ;
 TYPE_1__ delayed_free ;
 int free_zapped_rcu ;
 int inside_selftest () ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void call_rcu_zapped(struct pending_free *pf)
{
 WARN_ON_ONCE(inside_selftest());

 if (list_empty(&pf->zapped))
  return;

 if (delayed_free.scheduled)
  return;

 delayed_free.scheduled = 1;

 WARN_ON_ONCE(delayed_free.pf + delayed_free.index != pf);
 delayed_free.index ^= 1;

 call_rcu(&delayed_free.rcu_head, free_zapped_rcu);
}
