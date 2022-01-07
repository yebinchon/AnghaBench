
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NPROTO ;
 int * net_families ;
 scalar_t__ rcu_access_pointer (int ) ;

bool sock_is_registered(int family)
{
 return family < NPROTO && rcu_access_pointer(net_families[family]);
}
