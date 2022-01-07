
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_mgr {int list; } ;


 int list_del_rcu (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;
 int xfrm_km_lock ;

int xfrm_unregister_km(struct xfrm_mgr *km)
{
 spin_lock_bh(&xfrm_km_lock);
 list_del_rcu(&km->list);
 spin_unlock_bh(&xfrm_km_lock);
 synchronize_rcu();
 return 0;
}
