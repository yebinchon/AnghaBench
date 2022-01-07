
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int NPROTO ;
 int RCU_INIT_POINTER (int ,int *) ;
 int * net_families ;
 int net_family_lock ;
 int pr_info (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

void sock_unregister(int family)
{
 BUG_ON(family < 0 || family >= NPROTO);

 spin_lock(&net_family_lock);
 RCU_INIT_POINTER(net_families[family], ((void*)0));
 spin_unlock(&net_family_lock);

 synchronize_rcu();

 pr_info("NET: Unregistered protocol family %d\n", family);
}
