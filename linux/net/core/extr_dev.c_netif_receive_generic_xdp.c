
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_buff {void* data; void* data_meta; void* data_end; int * rxq; scalar_t__ data_hard_start; } ;
struct sk_buff {int tail; int data_len; int end; int data; int mac_header; int len; int dev; int protocol; } ;
struct netdev_rx_queue {int xdp_rxq; } ;
struct ethhdr {scalar_t__ h_proto; int h_dest; } ;
struct bpf_prog {int dummy; } ;
typedef scalar_t__ __be16 ;


 int ALIGN (int,int ) ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int NET_SKB_PAD ;


 scalar_t__ XDP_PACKET_HEADROOM ;



 int __skb_pull (struct sk_buff*,int) ;
 int __skb_push (struct sk_buff*,int) ;
 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int is_multicast_ether_addr_64bits (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct netdev_rx_queue* netif_get_rxqueue (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 scalar_t__ skb_is_tc_redirected (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_metadata_set (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;

__attribute__((used)) static u32 netif_receive_generic_xdp(struct sk_buff *skb,
         struct xdp_buff *xdp,
         struct bpf_prog *xdp_prog)
{
 struct netdev_rx_queue *rxqueue;
 void *orig_data, *orig_data_end;
 u32 metalen, act = 131;
 __be16 orig_eth_type;
 struct ethhdr *eth;
 bool orig_bcast;
 int hlen, off;
 u32 mac_len;




 if (skb_cloned(skb) || skb_is_tc_redirected(skb))
  return 130;





 if (skb_is_nonlinear(skb) ||
     skb_headroom(skb) < XDP_PACKET_HEADROOM) {
  int hroom = XDP_PACKET_HEADROOM - skb_headroom(skb);
  int troom = skb->tail + skb->data_len - skb->end;




  if (pskb_expand_head(skb,
         hroom > 0 ? ALIGN(hroom, NET_SKB_PAD) : 0,
         troom > 0 ? troom + 128 : 0, GFP_ATOMIC))
   goto do_drop;
  if (skb_linearize(skb))
   goto do_drop;
 }




 mac_len = skb->data - skb_mac_header(skb);
 hlen = skb_headlen(skb) + mac_len;
 xdp->data = skb->data - mac_len;
 xdp->data_meta = xdp->data;
 xdp->data_end = xdp->data + hlen;
 xdp->data_hard_start = skb->data - skb_headroom(skb);
 orig_data_end = xdp->data_end;
 orig_data = xdp->data;
 eth = (struct ethhdr *)xdp->data;
 orig_bcast = is_multicast_ether_addr_64bits(eth->h_dest);
 orig_eth_type = eth->h_proto;

 rxqueue = netif_get_rxqueue(skb);
 xdp->rxq = &rxqueue->xdp_rxq;

 act = bpf_prog_run_xdp(xdp_prog, xdp);


 off = xdp->data - orig_data;
 if (off) {
  if (off > 0)
   __skb_pull(skb, off);
  else if (off < 0)
   __skb_push(skb, -off);

  skb->mac_header += off;
  skb_reset_network_header(skb);
 }




 off = orig_data_end - xdp->data_end;
 if (off != 0) {
  skb_set_tail_pointer(skb, xdp->data_end - xdp->data);
  skb->len -= off;

 }


 eth = (struct ethhdr *)xdp->data;
 if ((orig_eth_type != eth->h_proto) ||
     (orig_bcast != is_multicast_ether_addr_64bits(eth->h_dest))) {
  __skb_push(skb, ETH_HLEN);
  skb->protocol = eth_type_trans(skb, skb->dev);
 }

 switch (act) {
 case 129:
 case 128:
  __skb_push(skb, mac_len);
  break;
 case 130:
  metalen = xdp->data - xdp->data_meta;
  if (metalen)
   skb_metadata_set(skb, metalen);
  break;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
  trace_xdp_exception(skb->dev, xdp_prog, act);

 case 131:
 do_drop:
  kfree_skb(skb);
  break;
 }

 return act;
}
