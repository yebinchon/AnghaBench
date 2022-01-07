
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int hash; } ;


 int ASSERT_RTNL () ;
 int hlist_del_init_rcu (int *) ;

__attribute__((used)) static void inet_hash_remove(struct in_ifaddr *ifa)
{
 ASSERT_RTNL();
 hlist_del_init_rcu(&ifa->hash);
}
