
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifacaddr6 {int aca_addr_lst; } ;


 int acaddr_hash_lock ;
 int hlist_del_init_rcu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipv6_del_acaddr_hash(struct ifacaddr6 *aca)
{
 spin_lock(&acaddr_hash_lock);
 hlist_del_init_rcu(&aca->aca_addr_lst);
 spin_unlock(&acaddr_hash_lock);
}
