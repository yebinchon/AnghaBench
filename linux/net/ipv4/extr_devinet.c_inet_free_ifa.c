
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_ifaddr {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int inet_rcu_free_ifa ;

__attribute__((used)) static void inet_free_ifa(struct in_ifaddr *ifa)
{
 call_rcu(&ifa->rcu_head, inet_rcu_free_ifa);
}
