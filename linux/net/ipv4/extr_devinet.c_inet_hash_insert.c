
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net {int dummy; } ;
struct in_ifaddr {int hash; int ifa_local; } ;


 int ASSERT_RTNL () ;
 int hlist_add_head_rcu (int *,int *) ;
 size_t inet_addr_hash (struct net*,int ) ;
 int * inet_addr_lst ;

__attribute__((used)) static void inet_hash_insert(struct net *net, struct in_ifaddr *ifa)
{
 u32 hash = inet_addr_hash(net, ifa->ifa_local);

 ASSERT_RTNL();
 hlist_add_head_rcu(&ifa->hash, &inet_addr_lst[hash]);
}
