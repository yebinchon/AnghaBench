
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int ip6_protocol_deliver_rcu (struct net*,struct sk_buff*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ip6_input_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 rcu_read_lock();
 ip6_protocol_deliver_rcu(net, skb, 0, 0);
 rcu_read_unlock();

 return 0;
}
