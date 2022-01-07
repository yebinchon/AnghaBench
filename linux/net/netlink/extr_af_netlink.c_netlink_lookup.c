
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct netlink_table {int dummy; } ;
struct net {int dummy; } ;


 struct sock* __netlink_lookup (struct netlink_table*,int ,struct net*) ;
 struct netlink_table* nl_table ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_hold (struct sock*) ;

__attribute__((used)) static struct sock *netlink_lookup(struct net *net, int protocol, u32 portid)
{
 struct netlink_table *table = &nl_table[protocol];
 struct sock *sk;

 rcu_read_lock();
 sk = __netlink_lookup(table, portid, net);
 if (sk)
  sock_hold(sk);
 rcu_read_unlock();

 return sk;
}
