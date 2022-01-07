
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int gro_receive; } ;
struct net_offload {TYPE_1__ callbacks; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {int is_fou; scalar_t__ is_ipv6; scalar_t__ encap_mark; } ;
struct TYPE_5__ {size_t protocol; } ;


 TYPE_3__* NAPI_GRO_CB (struct sk_buff*) ;
 struct sk_buff* call_gro_receive (int ,struct list_head*,struct sk_buff*) ;
 TYPE_2__* fou_from_sock (struct sock*) ;
 struct net_offload** inet6_offloads ;
 struct net_offload** inet_offloads ;
 struct net_offload* rcu_dereference (struct net_offload const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct sk_buff *fou_gro_receive(struct sock *sk,
           struct list_head *head,
           struct sk_buff *skb)
{
 u8 proto = fou_from_sock(sk)->protocol;
 const struct net_offload **offloads;
 const struct net_offload *ops;
 struct sk_buff *pp = ((void*)0);







 NAPI_GRO_CB(skb)->encap_mark = 0;


 NAPI_GRO_CB(skb)->is_fou = 1;

 rcu_read_lock();
 offloads = NAPI_GRO_CB(skb)->is_ipv6 ? inet6_offloads : inet_offloads;
 ops = rcu_dereference(offloads[proto]);
 if (!ops || !ops->callbacks.gro_receive)
  goto out_unlock;

 pp = call_gro_receive(ops->callbacks.gro_receive, head, skb);

out_unlock:
 rcu_read_unlock();

 return pp;
}
