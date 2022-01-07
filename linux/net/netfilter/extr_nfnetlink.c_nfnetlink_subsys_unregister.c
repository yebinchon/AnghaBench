
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfnetlink_subsystem {size_t subsys_id; } ;
struct TYPE_2__ {int * subsys; } ;


 int nfnl_lock (size_t) ;
 int nfnl_unlock (size_t) ;
 int synchronize_rcu () ;
 TYPE_1__* table ;

int nfnetlink_subsys_unregister(const struct nfnetlink_subsystem *n)
{
 nfnl_lock(n->subsys_id);
 table[n->subsys_id].subsys = ((void*)0);
 nfnl_unlock(n->subsys_id);
 synchronize_rcu();
 return 0;
}
