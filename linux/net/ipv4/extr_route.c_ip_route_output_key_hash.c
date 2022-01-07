
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi4 {int flowi4_tos; int flowi4_scope; int flowi4_iif; } ;
struct fib_result {int tclassid; int * table; int * fi; int type; } ;
typedef int __u8 ;


 int IPTOS_RT_MASK ;
 int LOOPBACK_IFINDEX ;
 int RTN_UNSPEC ;
 int RTO_ONLINK ;
 int RT_FL_TOS (struct flowi4*) ;
 int RT_SCOPE_LINK ;
 int RT_SCOPE_UNIVERSE ;
 struct rtable* ip_route_output_key_hash_rcu (struct net*,struct flowi4*,struct fib_result*,struct sk_buff const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct rtable *ip_route_output_key_hash(struct net *net, struct flowi4 *fl4,
     const struct sk_buff *skb)
{
 __u8 tos = RT_FL_TOS(fl4);
 struct fib_result res = {
  .type = RTN_UNSPEC,
  .fi = ((void*)0),
  .table = ((void*)0),
  .tclassid = 0,
 };
 struct rtable *rth;

 fl4->flowi4_iif = LOOPBACK_IFINDEX;
 fl4->flowi4_tos = tos & IPTOS_RT_MASK;
 fl4->flowi4_scope = ((tos & RTO_ONLINK) ?
    RT_SCOPE_LINK : RT_SCOPE_UNIVERSE);

 rcu_read_lock();
 rth = ip_route_output_key_hash_rcu(net, fl4, &res, skb);
 rcu_read_unlock();

 return rth;
}
