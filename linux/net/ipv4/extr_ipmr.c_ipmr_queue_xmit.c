
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vif_device {int flags; TYPE_2__* dev; int remote; int local; int bytes_out; int pkt_out; int link; } ;
struct sk_buff {scalar_t__ len; int dev; } ;
struct TYPE_8__ {scalar_t__ header_len; struct net_device* dev; } ;
struct rtable {TYPE_3__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {struct vif_device* vif_table; } ;
struct iphdr {int frag_off; int tos; int daddr; } ;
struct flowi4 {int dummy; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;


 int IGMPMSG_WHOLEPKT ;
 TYPE_5__* IPCB (struct sk_buff*) ;
 int IPPROTO_IPIP ;
 int IPSKB_FORWARDED ;
 int IPSTATS_MIB_FRAGFAILS ;
 int IP_DF ;
 int IP_INC_STATS (struct net*,int ) ;
 scalar_t__ IS_ERR (struct rtable*) ;
 scalar_t__ LL_RESERVED_SPACE (struct net_device*) ;
 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,struct net*,int *,struct sk_buff*,int ,struct net_device*,int ) ;
 int NF_INET_FORWARD ;
 int RT_TOS (int ) ;
 int VIFF_REGISTER ;
 int VIFF_TUNNEL ;
 scalar_t__ dst_mtu (TYPE_3__*) ;
 int ip_decrease_ttl (struct iphdr*) ;
 int ip_encap (struct net*,struct sk_buff*,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct rtable* ip_route_output_ports (struct net*,struct flowi4*,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;
 int ipmr_cache_report (struct mr_table*,struct sk_buff*,int,int ) ;
 int ipmr_forward_finish ;
 scalar_t__ ipmr_forward_offloaded (struct sk_buff*,struct mr_table*,int,int) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 scalar_t__ skb_cow (struct sk_buff*,int) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_3__*) ;

__attribute__((used)) static void ipmr_queue_xmit(struct net *net, struct mr_table *mrt,
       int in_vifi, struct sk_buff *skb, int vifi)
{
 const struct iphdr *iph = ip_hdr(skb);
 struct vif_device *vif = &mrt->vif_table[vifi];
 struct net_device *dev;
 struct rtable *rt;
 struct flowi4 fl4;
 int encap = 0;

 if (!vif->dev)
  goto out_free;

 if (vif->flags & VIFF_REGISTER) {
  vif->pkt_out++;
  vif->bytes_out += skb->len;
  vif->dev->stats.tx_bytes += skb->len;
  vif->dev->stats.tx_packets++;
  ipmr_cache_report(mrt, skb, vifi, IGMPMSG_WHOLEPKT);
  goto out_free;
 }

 if (ipmr_forward_offloaded(skb, mrt, in_vifi, vifi))
  goto out_free;

 if (vif->flags & VIFF_TUNNEL) {
  rt = ip_route_output_ports(net, &fl4, ((void*)0),
        vif->remote, vif->local,
        0, 0,
        IPPROTO_IPIP,
        RT_TOS(iph->tos), vif->link);
  if (IS_ERR(rt))
   goto out_free;
  encap = sizeof(struct iphdr);
 } else {
  rt = ip_route_output_ports(net, &fl4, ((void*)0), iph->daddr, 0,
        0, 0,
        IPPROTO_IPIP,
        RT_TOS(iph->tos), vif->link);
  if (IS_ERR(rt))
   goto out_free;
 }

 dev = rt->dst.dev;

 if (skb->len+encap > dst_mtu(&rt->dst) && (ntohs(iph->frag_off) & IP_DF)) {




  IP_INC_STATS(net, IPSTATS_MIB_FRAGFAILS);
  ip_rt_put(rt);
  goto out_free;
 }

 encap += LL_RESERVED_SPACE(dev) + rt->dst.header_len;

 if (skb_cow(skb, encap)) {
  ip_rt_put(rt);
  goto out_free;
 }

 vif->pkt_out++;
 vif->bytes_out += skb->len;

 skb_dst_drop(skb);
 skb_dst_set(skb, &rt->dst);
 ip_decrease_ttl(ip_hdr(skb));




 if (vif->flags & VIFF_TUNNEL) {
  ip_encap(net, skb, vif->local, vif->remote);

  vif->dev->stats.tx_packets++;
  vif->dev->stats.tx_bytes += skb->len;
 }

 IPCB(skb)->flags |= IPSKB_FORWARDED;
 NF_HOOK(NFPROTO_IPV4, NF_INET_FORWARD,
  net, ((void*)0), skb, skb->dev, dev,
  ipmr_forward_finish);
 return;

out_free:
 kfree_skb(skb);
}
