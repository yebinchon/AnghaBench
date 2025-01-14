
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct rtable {struct dst_entry dst; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct flowi4 {int dummy; } ;
struct TYPE_2__ {int (* check ) (struct dst_entry*,int ) ;} ;


 scalar_t__ IS_ERR (struct rtable*) ;
 int __build_flow_key (struct net*,struct flowi4*,struct sock*,struct iphdr const*,int ,int ,int ,int ,int ) ;
 int __ip_rt_update_pmtu (struct rtable*,struct flowi4*,int ) ;
 int __ipv4_sk_update_pmtu (struct sk_buff*,struct sock*,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dst_check (struct dst_entry*,int ) ;
 int dst_release (struct dst_entry*) ;
 struct rtable* ip_route_output_flow (struct net*,struct flowi4*,struct sock*) ;
 int ip_sk_accept_pmtu (struct sock*) ;
 struct dst_entry* sk_dst_get (struct sock*) ;
 int sk_dst_set (struct sock*,struct dst_entry*) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int stub1 (struct dst_entry*,int ) ;
 scalar_t__ xfrm_dst_path (struct dst_entry*) ;

void ipv4_sk_update_pmtu(struct sk_buff *skb, struct sock *sk, u32 mtu)
{
 const struct iphdr *iph = (const struct iphdr *) skb->data;
 struct flowi4 fl4;
 struct rtable *rt;
 struct dst_entry *odst = ((void*)0);
 bool new = 0;
 struct net *net = sock_net(sk);

 bh_lock_sock(sk);

 if (!ip_sk_accept_pmtu(sk))
  goto out;

 odst = sk_dst_get(sk);

 if (sock_owned_by_user(sk) || !odst) {
  __ipv4_sk_update_pmtu(skb, sk, mtu);
  goto out;
 }

 __build_flow_key(net, &fl4, sk, iph, 0, 0, 0, 0, 0);

 rt = (struct rtable *)odst;
 if (odst->obsolete && !odst->ops->check(odst, 0)) {
  rt = ip_route_output_flow(sock_net(sk), &fl4, sk);
  if (IS_ERR(rt))
   goto out;

  new = 1;
 }

 __ip_rt_update_pmtu((struct rtable *) xfrm_dst_path(&rt->dst), &fl4, mtu);

 if (!dst_check(&rt->dst, 0)) {
  if (new)
   dst_release(&rt->dst);

  rt = ip_route_output_flow(sock_net(sk), &fl4, sk);
  if (IS_ERR(rt))
   goto out;

  new = 1;
 }

 if (new)
  sk_dst_set(sk, &rt->dst);

out:
 bh_unlock_sock(sk);
 dst_release(odst);
}
