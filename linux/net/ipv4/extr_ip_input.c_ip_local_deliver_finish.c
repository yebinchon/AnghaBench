
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int protocol; } ;


 int __skb_pull (struct sk_buff*,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_protocol_deliver_rcu (struct net*,struct sk_buff*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_network_header_len (struct sk_buff*) ;

__attribute__((used)) static int ip_local_deliver_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 __skb_pull(skb, skb_network_header_len(skb));

 rcu_read_lock();
 ip_protocol_deliver_rcu(net, skb, ip_hdr(skb)->protocol);
 rcu_read_unlock();

 return 0;
}
