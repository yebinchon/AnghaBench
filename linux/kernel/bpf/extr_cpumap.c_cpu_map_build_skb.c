
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int headroom; unsigned int len; int dev_rx; scalar_t__ metasize; int data; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int protocol; } ;
struct bpf_cpu_map_entry {int dummy; } ;


 unsigned int SKB_DATA_ALIGN (int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 struct sk_buff* build_skb_around (struct sk_buff*,void*,unsigned int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int skb_metadata_set (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int xdp_release_frame (struct xdp_frame*) ;
 int xdp_scrub_frame (struct xdp_frame*) ;

__attribute__((used)) static struct sk_buff *cpu_map_build_skb(struct bpf_cpu_map_entry *rcpu,
      struct xdp_frame *xdpf,
      struct sk_buff *skb)
{
 unsigned int hard_start_headroom;
 unsigned int frame_size;
 void *pkt_data_start;


 hard_start_headroom = sizeof(struct xdp_frame) + xdpf->headroom;
 frame_size = SKB_DATA_ALIGN(xdpf->len + hard_start_headroom) +
  SKB_DATA_ALIGN(sizeof(struct skb_shared_info));

 pkt_data_start = xdpf->data - hard_start_headroom;
 skb = build_skb_around(skb, pkt_data_start, frame_size);
 if (unlikely(!skb))
  return ((void*)0);

 skb_reserve(skb, hard_start_headroom);
 __skb_put(skb, xdpf->len);
 if (xdpf->metasize)
  skb_metadata_set(skb, xdpf->metasize);


 skb->protocol = eth_type_trans(skb, xdpf->dev_rx);
 xdp_release_frame(xdpf);


 xdp_scrub_frame(xdpf);

 return skb;
}
