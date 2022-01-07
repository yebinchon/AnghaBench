
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_sap {int node; int sk_count; } ;


 int WARN_ON (int ) ;
 int kfree_rcu (struct llc_sap*,int ) ;
 int list_del_rcu (int *) ;
 int llc_sap_list_lock ;
 int rcu ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void llc_sap_close(struct llc_sap *sap)
{
 WARN_ON(sap->sk_count);

 spin_lock_bh(&llc_sap_list_lock);
 list_del_rcu(&sap->node);
 spin_unlock_bh(&llc_sap_list_lock);

 kfree_rcu(sap, rcu);
}
