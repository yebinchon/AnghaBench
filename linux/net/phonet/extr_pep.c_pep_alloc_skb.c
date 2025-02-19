
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ MAX_PNPIPE_HEADER ;
 int __skb_push (struct sk_buff*,int) ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,void const*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

__attribute__((used)) static struct sk_buff *pep_alloc_skb(struct sock *sk, const void *payload,
     int len, gfp_t priority)
{
 struct sk_buff *skb = alloc_skb(MAX_PNPIPE_HEADER + len, priority);
 if (!skb)
  return ((void*)0);
 skb_set_owner_w(skb, sk);

 skb_reserve(skb, MAX_PNPIPE_HEADER);
 __skb_put(skb, len);
 skb_copy_to_linear_data(skb, payload, len);
 __skb_push(skb, sizeof(struct pnpipehdr));
 skb_reset_transport_header(skb);
 return skb;
}
