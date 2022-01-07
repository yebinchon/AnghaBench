
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int hard_header_len; } ;
struct neighbour {struct net_device* dev; } ;
struct dn_skb_cb {int rt_flags; int hops; int src; int dst; } ;
struct dn_short_packet {int msgflg; int forward; int srcnode; int dstnode; } ;
typedef int __le16 ;


 int DN_RT_F_RQR ;
 int DN_RT_F_RTS ;
 int DN_RT_PKT_SHORT ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int ENOBUFS ;
 int NFPROTO_DECNET ;
 int NF_DN_POST_ROUTING ;
 int NF_HOOK (int ,int ,int *,struct sock*,struct sk_buff*,int *,struct net_device*,int ) ;
 int consume_skb (struct sk_buff*) ;
 int cpu_to_le16 (scalar_t__) ;
 int dn_neigh_output_packet ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int net_crit_ratelimited (char*) ;
 int net_info_ratelimited (char*) ;
 int skb_headroom (struct sk_buff*) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static int dn_short_output(struct neighbour *neigh, struct sock *sk,
      struct sk_buff *skb)
{
 struct net_device *dev = neigh->dev;
 int headroom = dev->hard_header_len + sizeof(struct dn_short_packet) + 2;
 struct dn_short_packet *sp;
 unsigned char *data;
 struct dn_skb_cb *cb = DN_SKB_CB(skb);


 if (skb_headroom(skb) < headroom) {
  struct sk_buff *skb2 = skb_realloc_headroom(skb, headroom);
  if (skb2 == ((void*)0)) {
   net_crit_ratelimited("dn_short_output: no memory\n");
   kfree_skb(skb);
   return -ENOBUFS;
  }
  consume_skb(skb);
  skb = skb2;
  net_info_ratelimited("dn_short_output: Increasing headroom\n");
 }

 data = skb_push(skb, sizeof(struct dn_short_packet) + 2);
 *((__le16 *)data) = cpu_to_le16(skb->len - 2);
 sp = (struct dn_short_packet *)(data+2);

 sp->msgflg = DN_RT_PKT_SHORT|(cb->rt_flags&(DN_RT_F_RQR|DN_RT_F_RTS));
 sp->dstnode = cb->dst;
 sp->srcnode = cb->src;
 sp->forward = cb->hops & 0x3f;

 skb_reset_network_header(skb);

 return NF_HOOK(NFPROTO_DECNET, NF_DN_POST_ROUTING,
         &init_net, sk, skb, ((void*)0), neigh->dev,
         dn_neigh_output_packet);
}
