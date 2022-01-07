
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct udphdr {int source; int dest; } ;
struct sock {int sk_rx_dst; int sk_refcnt; } ;
struct sk_buff {scalar_t__ pkt_type; TYPE_1__* dev; int destructor; struct sock* sk; } ;
struct net {int dummy; } ;
struct iphdr {int tos; int saddr; int daddr; int protocol; } ;
struct in_device {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {int inet_daddr; } ;
struct TYPE_5__ {int ifindex; } ;


 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_MULTICAST ;
 struct dst_entry* READ_ONCE (int ) ;
 struct in_device* __in_dev_get_rcu (TYPE_1__*) ;
 struct sock* __udp4_lib_demux_lookup (struct net*,int ,int ,int ,int ,int,int) ;
 struct sock* __udp4_lib_mcast_demux_lookup (struct net*,int ,int ,int ,int ,int,int) ;
 struct net* dev_net (TYPE_1__*) ;
 struct dst_entry* dst_check (struct dst_entry*,int ) ;
 int inet_sdif (struct sk_buff*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int ip_check_mc_rcu (struct in_device*,int ,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_mc_validate_source (struct sk_buff*,int ,int ,int ,TYPE_1__*,struct in_device*,int *) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int refcount_inc_not_zero (int *) ;
 int skb_dst_set_noref (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int sock_efree ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

int udp_v4_early_demux(struct sk_buff *skb)
{
 struct net *net = dev_net(skb->dev);
 struct in_device *in_dev = ((void*)0);
 const struct iphdr *iph;
 const struct udphdr *uh;
 struct sock *sk = ((void*)0);
 struct dst_entry *dst;
 int dif = skb->dev->ifindex;
 int sdif = inet_sdif(skb);
 int ours;


 if (!pskb_may_pull(skb, skb_transport_offset(skb) + sizeof(struct udphdr)))
  return 0;

 iph = ip_hdr(skb);
 uh = udp_hdr(skb);

 if (skb->pkt_type == PACKET_MULTICAST) {
  in_dev = __in_dev_get_rcu(skb->dev);

  if (!in_dev)
   return 0;

  ours = ip_check_mc_rcu(in_dev, iph->daddr, iph->saddr,
           iph->protocol);
  if (!ours)
   return 0;

  sk = __udp4_lib_mcast_demux_lookup(net, uh->dest, iph->daddr,
         uh->source, iph->saddr,
         dif, sdif);
 } else if (skb->pkt_type == PACKET_HOST) {
  sk = __udp4_lib_demux_lookup(net, uh->dest, iph->daddr,
          uh->source, iph->saddr, dif, sdif);
 }

 if (!sk || !refcount_inc_not_zero(&sk->sk_refcnt))
  return 0;

 skb->sk = sk;
 skb->destructor = sock_efree;
 dst = READ_ONCE(sk->sk_rx_dst);

 if (dst)
  dst = dst_check(dst, 0);
 if (dst) {
  u32 itag = 0;





  skb_dst_set_noref(skb, dst);




  if (!inet_sk(sk)->inet_daddr && in_dev)
   return ip_mc_validate_source(skb, iph->daddr,
           iph->saddr, iph->tos,
           skb->dev, in_dev, &itag);
 }
 return 0;
}
