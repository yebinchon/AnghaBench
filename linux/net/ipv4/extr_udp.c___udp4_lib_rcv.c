
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int dest; int source; int len; } ;
struct udp_table {int dummy; } ;
struct sock {struct dst_entry* sk_rx_dst; } ;
struct sk_buff {unsigned short len; int dev; } ;
struct rtable {int rt_flags; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int daddr; int saddr; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_PORT_UNREACH ;
 int IPPROTO_UDP ;
 int IPPROTO_UDPLITE ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 int UDP_MIB_CSUMERRORS ;
 int UDP_MIB_INERRORS ;
 int UDP_MIB_NOPORTS ;
 int XFRM_POLICY_IN ;
 int __UDP_INC_STATS (struct net*,int ,int) ;
 struct sock* __udp4_lib_lookup_skb (struct sk_buff*,int ,int ,struct udp_table*) ;
 int __udp4_lib_mcast_deliver (struct net*,struct sk_buff*,struct udphdr*,int ,int ,struct udp_table*,int) ;
 struct net* dev_net (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int net_dbg_ratelimited (char*,char*,int *,unsigned short,unsigned short,unsigned short,unsigned short,...) ;
 int nf_reset_ct (struct sk_buff*) ;
 unsigned short ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,unsigned short) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 struct sock* skb_steal_sock (struct sk_buff*) ;
 int sock_put (struct sock*) ;
 scalar_t__ udp4_csum_init (struct sk_buff*,struct udphdr*,int) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 scalar_t__ udp_lib_checksum_complete (struct sk_buff*) ;
 int udp_sk_rx_dst_set (struct sock*,struct dst_entry*) ;
 int udp_unicast_rcv_skb (struct sock*,struct sk_buff*,struct udphdr*) ;
 scalar_t__ unlikely (int) ;
 int xfrm4_policy_check (int *,int ,struct sk_buff*) ;

int __udp4_lib_rcv(struct sk_buff *skb, struct udp_table *udptable,
     int proto)
{
 struct sock *sk;
 struct udphdr *uh;
 unsigned short ulen;
 struct rtable *rt = skb_rtable(skb);
 __be32 saddr, daddr;
 struct net *net = dev_net(skb->dev);




 if (!pskb_may_pull(skb, sizeof(struct udphdr)))
  goto drop;

 uh = udp_hdr(skb);
 ulen = ntohs(uh->len);
 saddr = ip_hdr(skb)->saddr;
 daddr = ip_hdr(skb)->daddr;

 if (ulen > skb->len)
  goto short_packet;

 if (proto == IPPROTO_UDP) {

  if (ulen < sizeof(*uh) || pskb_trim_rcsum(skb, ulen))
   goto short_packet;
  uh = udp_hdr(skb);
 }

 if (udp4_csum_init(skb, uh, proto))
  goto csum_error;

 sk = skb_steal_sock(skb);
 if (sk) {
  struct dst_entry *dst = skb_dst(skb);
  int ret;

  if (unlikely(sk->sk_rx_dst != dst))
   udp_sk_rx_dst_set(sk, dst);

  ret = udp_unicast_rcv_skb(sk, skb, uh);
  sock_put(sk);
  return ret;
 }

 if (rt->rt_flags & (RTCF_BROADCAST|RTCF_MULTICAST))
  return __udp4_lib_mcast_deliver(net, skb, uh,
      saddr, daddr, udptable, proto);

 sk = __udp4_lib_lookup_skb(skb, uh->source, uh->dest, udptable);
 if (sk)
  return udp_unicast_rcv_skb(sk, skb, uh);

 if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_IN, skb))
  goto drop;
 nf_reset_ct(skb);


 if (udp_lib_checksum_complete(skb))
  goto csum_error;

 __UDP_INC_STATS(net, UDP_MIB_NOPORTS, proto == IPPROTO_UDPLITE);
 icmp_send(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);





 kfree_skb(skb);
 return 0;

short_packet:
 net_dbg_ratelimited("UDP%s: short packet: From %pI4:%u %d/%d to %pI4:%u\n",
       proto == IPPROTO_UDPLITE ? "Lite" : "",
       &saddr, ntohs(uh->source),
       ulen, skb->len,
       &daddr, ntohs(uh->dest));
 goto drop;

csum_error:




 net_dbg_ratelimited("UDP%s: bad checksum. From %pI4:%u to %pI4:%u ulen %d\n",
       proto == IPPROTO_UDPLITE ? "Lite" : "",
       &saddr, ntohs(uh->source), &daddr, ntohs(uh->dest),
       ulen);
 __UDP_INC_STATS(net, UDP_MIB_CSUMERRORS, proto == IPPROTO_UDPLITE);
drop:
 __UDP_INC_STATS(net, UDP_MIB_INERRORS, proto == IPPROTO_UDPLITE);
 kfree_skb(skb);
 return 0;
}
