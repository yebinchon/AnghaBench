
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ encapsulation; } ;


 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ __bpf_skb_max_len (struct sk_buff*) ;
 scalar_t__ __bpf_skb_min_len (struct sk_buff*) ;
 int __bpf_try_make_writable (struct sk_buff*,scalar_t__) ;
 int bpf_skb_grow_rcsum (struct sk_buff*,scalar_t__) ;
 int bpf_skb_trim_rcsum (struct sk_buff*,scalar_t__) ;
 int skb_gso_reset (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int __bpf_skb_change_tail(struct sk_buff *skb, u32 new_len,
     u64 flags)
{
 u32 max_len = __bpf_skb_max_len(skb);
 u32 min_len = __bpf_skb_min_len(skb);
 int ret;

 if (unlikely(flags || new_len > max_len || new_len < min_len))
  return -EINVAL;
 if (skb->encapsulation)
  return -ENOTSUPP;
 ret = __bpf_try_make_writable(skb, skb->len);
 if (!ret) {
  if (new_len > skb->len)
   ret = bpf_skb_grow_rcsum(skb, new_len);
  else if (new_len < skb->len)
   ret = bpf_skb_trim_rcsum(skb, new_len);
  if (!ret && skb_is_gso(skb))
   skb_gso_reset(skb);
 }
 return ret;
}
