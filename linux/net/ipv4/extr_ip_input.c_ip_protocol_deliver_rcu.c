
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_protocol {int handler; int no_policy; } ;
struct net {int dummy; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_PROT_UNREACH ;
 int INDIRECT_CALL_2 (int ,int ,int ,struct sk_buff*) ;
 int IPSTATS_MIB_INDELIVERS ;
 int IPSTATS_MIB_INUNKNOWNPROTOS ;
 int XFRM_POLICY_IN ;
 int __IP_INC_STATS (struct net*,int ) ;
 int consume_skb (struct sk_buff*) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int * inet_protos ;
 int kfree_skb (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int raw_local_deliver (struct sk_buff*,int) ;
 struct net_protocol* rcu_dereference (int ) ;
 int tcp_v4_rcv ;
 int udp_rcv ;
 scalar_t__ xfrm4_policy_check (int *,int ,struct sk_buff*) ;

void ip_protocol_deliver_rcu(struct net *net, struct sk_buff *skb, int protocol)
{
 const struct net_protocol *ipprot;
 int raw, ret;

resubmit:
 raw = raw_local_deliver(skb, protocol);

 ipprot = rcu_dereference(inet_protos[protocol]);
 if (ipprot) {
  if (!ipprot->no_policy) {
   if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
    kfree_skb(skb);
    return;
   }
   nf_reset_ct(skb);
  }
  ret = INDIRECT_CALL_2(ipprot->handler, tcp_v4_rcv, udp_rcv,
          skb);
  if (ret < 0) {
   protocol = -ret;
   goto resubmit;
  }
  __IP_INC_STATS(net, IPSTATS_MIB_INDELIVERS);
 } else {
  if (!raw) {
   if (xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
    __IP_INC_STATS(net, IPSTATS_MIB_INUNKNOWNPROTOS);
    icmp_send(skb, ICMP_DEST_UNREACH,
       ICMP_PROT_UNREACH, 0);
   }
   kfree_skb(skb);
  } else {
   __IP_INC_STATS(net, IPSTATS_MIB_INDELIVERS);
   consume_skb(skb);
  }
 }
}
