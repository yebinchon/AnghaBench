
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct skb_shared_info {int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int dummy; } ;


 int BPF_F_ADJ_ROOM_FIXED_GSO ;
 int EINVAL ;
 int ENOTSUPP ;
 int GFP_ATOMIC ;
 int SKB_GSO_DODGY ;
 int SKB_GSO_UDP_L4 ;
 int bpf_skb_net_hdr_pop (struct sk_buff*,int ,int ) ;
 int skb_increase_gso_size (struct skb_shared_info*,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_is_gso_tcp (struct sk_buff*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int skb_unclone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bpf_skb_net_shrink(struct sk_buff *skb, u32 off, u32 len_diff,
         u64 flags)
{
 int ret;

 if (flags & ~BPF_F_ADJ_ROOM_FIXED_GSO)
  return -EINVAL;

 if (skb_is_gso(skb) && !skb_is_gso_tcp(skb)) {

  if (!(skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) ||
      !(flags & BPF_F_ADJ_ROOM_FIXED_GSO))
   return -ENOTSUPP;
 }

 ret = skb_unclone(skb, GFP_ATOMIC);
 if (unlikely(ret < 0))
  return ret;

 ret = bpf_skb_net_hdr_pop(skb, off, len_diff);
 if (unlikely(ret < 0))
  return ret;

 if (skb_is_gso(skb)) {
  struct skb_shared_info *shinfo = skb_shinfo(skb);


  if (!(flags & BPF_F_ADJ_ROOM_FIXED_GSO))
   skb_increase_gso_size(shinfo, len_diff);


  shinfo->gso_type |= SKB_GSO_DODGY;
  shinfo->gso_segs = 0;
 }

 return 0;
}
