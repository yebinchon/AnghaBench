
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct seg6_lwt {int cache; } ;
struct dst_entry {int dev; int error; int lwtstate; } ;
struct TYPE_2__ {int saddr; } ;


 int LL_RESERVED_SPACE (int ) ;
 struct dst_entry* dst_cache_get (int *) ;
 int dst_cache_set_ip6 (int *,struct dst_entry*,int *) ;
 int dst_input (struct sk_buff*) ;
 int ip6_route_input (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int seg6_do_srh (struct sk_buff*) ;
 struct seg6_lwt* seg6_lwt_lwtunnel (int ) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int seg6_input(struct sk_buff *skb)
{
 struct dst_entry *orig_dst = skb_dst(skb);
 struct dst_entry *dst = ((void*)0);
 struct seg6_lwt *slwt;
 int err;

 err = seg6_do_srh(skb);
 if (unlikely(err)) {
  kfree_skb(skb);
  return err;
 }

 slwt = seg6_lwt_lwtunnel(orig_dst->lwtstate);

 preempt_disable();
 dst = dst_cache_get(&slwt->cache);
 preempt_enable();

 skb_dst_drop(skb);

 if (!dst) {
  ip6_route_input(skb);
  dst = skb_dst(skb);
  if (!dst->error) {
   preempt_disable();
   dst_cache_set_ip6(&slwt->cache, dst,
       &ipv6_hdr(skb)->saddr);
   preempt_enable();
  }
 } else {
  skb_dst_set(skb, dst);
 }

 err = skb_cow_head(skb, LL_RESERVED_SPACE(dst->dev));
 if (unlikely(err))
  return err;

 return dst_input(skb);
}
