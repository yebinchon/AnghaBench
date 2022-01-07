
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int data; } ;


 int EINVAL ;
 scalar_t__ __bpf_skb_max_len (struct sk_buff*) ;
 int __skb_push (struct sk_buff*,scalar_t__) ;
 scalar_t__ likely (int) ;
 int memset (int ,int ,scalar_t__) ;
 int skb_cow (struct sk_buff*,scalar_t__) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int __bpf_skb_change_head(struct sk_buff *skb, u32 head_room,
     u64 flags)
{
 u32 max_len = __bpf_skb_max_len(skb);
 u32 new_len = skb->len + head_room;
 int ret;

 if (unlikely(flags || (!skb_is_gso(skb) && new_len > max_len) ||
       new_len < skb->len))
  return -EINVAL;

 ret = skb_cow(skb, head_room);
 if (likely(!ret)) {
  __skb_push(skb, head_room);
  memset(skb->data, 0, head_room);
  skb_reset_mac_header(skb);
 }

 return ret;
}
