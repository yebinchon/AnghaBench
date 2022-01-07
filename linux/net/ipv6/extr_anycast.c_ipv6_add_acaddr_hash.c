
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ifacaddr6 {int aca_addr_lst; int aca_addr; } ;


 int acaddr_hash_lock ;
 int hlist_add_head_rcu (int *,int *) ;
 unsigned int inet6_acaddr_hash (struct net*,int *) ;
 int * inet6_acaddr_lst ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipv6_add_acaddr_hash(struct net *net, struct ifacaddr6 *aca)
{
 unsigned int hash = inet6_acaddr_hash(net, &aca->aca_addr);

 spin_lock(&acaddr_hash_lock);
 hlist_add_head_rcu(&aca->aca_addr_lst, &inet6_acaddr_lst[hash]);
 spin_unlock(&acaddr_hash_lock);
}
