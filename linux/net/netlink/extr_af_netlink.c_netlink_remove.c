
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {size_t sk_protocol; int sk_refcnt; } ;
struct netlink_table {int hash; } ;
struct TYPE_2__ {scalar_t__ subscriptions; int node; } ;


 size_t NETLINK_GENERIC ;
 int WARN_ON (int) ;
 int __sk_del_bind_node (struct sock*) ;
 int __sock_put (struct sock*) ;
 int atomic_inc (int *) ;
 int genl_sk_destructing_cnt ;
 int netlink_rhashtable_params ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 int netlink_update_listeners (struct sock*) ;
 struct netlink_table* nl_table ;
 TYPE_1__* nlk_sk (struct sock*) ;
 int refcount_read (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void netlink_remove(struct sock *sk)
{
 struct netlink_table *table;

 table = &nl_table[sk->sk_protocol];
 if (!rhashtable_remove_fast(&table->hash, &nlk_sk(sk)->node,
        netlink_rhashtable_params)) {
  WARN_ON(refcount_read(&sk->sk_refcnt) == 1);
  __sock_put(sk);
 }

 netlink_table_grab();
 if (nlk_sk(sk)->subscriptions) {
  __sk_del_bind_node(sk);
  netlink_update_listeners(sk);
 }
 if (sk->sk_protocol == NETLINK_GENERIC)
  atomic_inc(&genl_sk_destructing_cnt);
 netlink_table_ungrab();
}
