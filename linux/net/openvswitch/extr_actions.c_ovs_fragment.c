
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u16 ;
struct vport {TYPE_2__* dev; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {unsigned long _skb_refdst; int sk; int inner_network_header; int network_header; int protocol; } ;
struct dst_entry {TYPE_2__* dev; } ;
struct rt6_info {struct dst_entry dst; } ;
struct nf_ipv6_ops {int (* fragment ) (struct net*,int ,struct sk_buff*,int ) ;} ;
struct net {int dummy; } ;
typedef int ovs_rt ;
struct TYPE_8__ {void* frag_max_size; } ;
struct TYPE_7__ {void* frag_max_size; } ;
struct TYPE_6__ {int mtu; } ;


 int DST_NOCOUNT ;
 int DST_OBSOLETE_NONE ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 TYPE_4__* IP6CB (struct sk_buff*) ;
 TYPE_3__* IPCB (struct sk_buff*) ;
 scalar_t__ MAX_L2_LEN ;
 int OVS_NLERR (int,char*) ;
 int WARN_ONCE (int,char*,int ,int ,void*,int ) ;
 int dst_init (struct dst_entry*,int *,int *,int,int ,int ) ;
 scalar_t__ eth_p_mpls (int ) ;
 scalar_t__ htons (int ) ;
 int ip_do_fragment (struct net*,int ,struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct rt6_info*,int ,int) ;
 struct nf_ipv6_ops* nf_get_ipv6_ops () ;
 int ntohs (scalar_t__) ;
 int ovs_dst_ops ;
 int ovs_key_mac_proto (struct sw_flow_key*) ;
 int ovs_vport_name (struct vport*) ;
 int ovs_vport_output ;
 int prepare_frag (struct vport*,struct sk_buff*,void*,int ) ;
 int refdst_drop (unsigned long) ;
 int skb_dst_set_noref (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int stub1 (struct net*,int ,struct sk_buff*,int ) ;

__attribute__((used)) static void ovs_fragment(struct net *net, struct vport *vport,
    struct sk_buff *skb, u16 mru,
    struct sw_flow_key *key)
{
 u16 orig_network_offset = 0;

 if (eth_p_mpls(skb->protocol)) {
  orig_network_offset = skb_network_offset(skb);
  skb->network_header = skb->inner_network_header;
 }

 if (skb_network_offset(skb) > MAX_L2_LEN) {
  OVS_NLERR(1, "L2 header too long to fragment");
  goto err;
 }

 if (key->eth.type == htons(ETH_P_IP)) {
  struct dst_entry ovs_dst;
  unsigned long orig_dst;

  prepare_frag(vport, skb, orig_network_offset,
        ovs_key_mac_proto(key));
  dst_init(&ovs_dst, &ovs_dst_ops, ((void*)0), 1,
    DST_OBSOLETE_NONE, DST_NOCOUNT);
  ovs_dst.dev = vport->dev;

  orig_dst = skb->_skb_refdst;
  skb_dst_set_noref(skb, &ovs_dst);
  IPCB(skb)->frag_max_size = mru;

  ip_do_fragment(net, skb->sk, skb, ovs_vport_output);
  refdst_drop(orig_dst);
 } else if (key->eth.type == htons(ETH_P_IPV6)) {
  const struct nf_ipv6_ops *v6ops = nf_get_ipv6_ops();
  unsigned long orig_dst;
  struct rt6_info ovs_rt;

  if (!v6ops)
   goto err;

  prepare_frag(vport, skb, orig_network_offset,
        ovs_key_mac_proto(key));
  memset(&ovs_rt, 0, sizeof(ovs_rt));
  dst_init(&ovs_rt.dst, &ovs_dst_ops, ((void*)0), 1,
    DST_OBSOLETE_NONE, DST_NOCOUNT);
  ovs_rt.dst.dev = vport->dev;

  orig_dst = skb->_skb_refdst;
  skb_dst_set_noref(skb, &ovs_rt.dst);
  IP6CB(skb)->frag_max_size = mru;

  v6ops->fragment(net, skb->sk, skb, ovs_vport_output);
  refdst_drop(orig_dst);
 } else {
  WARN_ONCE(1, "Failed fragment ->%s: eth=%04x, MRU=%d, MTU=%d.",
     ovs_vport_name(vport), ntohs(key->eth.type), mru,
     vport->dev->mtu);
  goto err;
 }

 return;
err:
 kfree_skb(skb);
}
