
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct net_protocol {int (* err_handler ) (struct sk_buff*,int ) ;} ;
struct iphdr {int protocol; int ihl; } ;


 int ICMP_MIB_INERRORS ;
 int __ICMP_INC_STATS (int ,int ) ;
 int dev_net (int ) ;
 int * inet_protos ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int raw_icmp_error (struct sk_buff*,int,int ) ;
 struct net_protocol* rcu_dereference (int ) ;
 int stub1 (struct sk_buff*,int ) ;

__attribute__((used)) static void icmp_socket_deliver(struct sk_buff *skb, u32 info)
{
 const struct iphdr *iph = (const struct iphdr *) skb->data;
 const struct net_protocol *ipprot;
 int protocol = iph->protocol;




 if (!pskb_may_pull(skb, iph->ihl * 4 + 8)) {
  __ICMP_INC_STATS(dev_net(skb->dev), ICMP_MIB_INERRORS);
  return;
 }

 raw_icmp_error(skb, protocol, info);

 ipprot = rcu_dereference(inet_protos[protocol]);
 if (ipprot && ipprot->err_handler)
  ipprot->err_handler(skb, info);
}
