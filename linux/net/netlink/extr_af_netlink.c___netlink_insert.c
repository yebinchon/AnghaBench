
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct netlink_table {int hash; } ;
struct netlink_compare_arg {int dummy; } ;
struct TYPE_2__ {int node; int portid; } ;


 int netlink_compare_arg_init (struct netlink_compare_arg*,int ,int ) ;
 int netlink_rhashtable_params ;
 TYPE_1__* nlk_sk (struct sock*) ;
 int rhashtable_lookup_insert_key (int *,struct netlink_compare_arg*,int *,int ) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int __netlink_insert(struct netlink_table *table, struct sock *sk)
{
 struct netlink_compare_arg arg;

 netlink_compare_arg_init(&arg, sock_net(sk), nlk_sk(sk)->portid);
 return rhashtable_lookup_insert_key(&table->hash, &arg,
         &nlk_sk(sk)->node,
         netlink_rhashtable_params);
}
