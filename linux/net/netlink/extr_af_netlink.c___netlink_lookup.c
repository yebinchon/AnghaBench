
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct netlink_table {int hash; } ;
struct netlink_compare_arg {int dummy; } ;
struct net {int dummy; } ;


 int netlink_compare_arg_init (struct netlink_compare_arg*,struct net*,int ) ;
 int netlink_rhashtable_params ;
 struct sock* rhashtable_lookup_fast (int *,struct netlink_compare_arg*,int ) ;

__attribute__((used)) static struct sock *__netlink_lookup(struct netlink_table *table, u32 portid,
         struct net *net)
{
 struct netlink_compare_arg arg;

 netlink_compare_arg_init(&arg, net, portid);
 return rhashtable_lookup_fast(&table->hash, &arg,
          netlink_rhashtable_params);
}
