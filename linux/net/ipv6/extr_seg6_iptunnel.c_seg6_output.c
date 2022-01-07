
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int mark; } ;
struct seg6_lwt {int cache; } ;
struct net {int dummy; } ;
struct ipv6hdr {int nexthdr; int saddr; int daddr; } ;
struct flowi6 {int saddr; int flowi6_proto; int flowi6_mark; int flowlabel; int daddr; } ;
struct dst_entry {int error; int dev; int lwtstate; } ;
typedef int fl6 ;


 int EINVAL ;
 int LL_RESERVED_SPACE (int ) ;
 struct dst_entry* dst_cache_get (int *) ;
 int dst_cache_set_ip6 (int *,struct dst_entry*,int *) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int dst_release (struct dst_entry*) ;
 int ip6_flowinfo (struct ipv6hdr*) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi6*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct flowi6*,int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int seg6_do_srh (struct sk_buff*) ;
 struct seg6_lwt* seg6_lwt_lwtunnel (int ) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int seg6_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dst_entry *orig_dst = skb_dst(skb);
 struct dst_entry *dst = ((void*)0);
 struct seg6_lwt *slwt;
 int err = -EINVAL;

 err = seg6_do_srh(skb);
 if (unlikely(err))
  goto drop;

 slwt = seg6_lwt_lwtunnel(orig_dst->lwtstate);

 preempt_disable();
 dst = dst_cache_get(&slwt->cache);
 preempt_enable();

 if (unlikely(!dst)) {
  struct ipv6hdr *hdr = ipv6_hdr(skb);
  struct flowi6 fl6;

  memset(&fl6, 0, sizeof(fl6));
  fl6.daddr = hdr->daddr;
  fl6.saddr = hdr->saddr;
  fl6.flowlabel = ip6_flowinfo(hdr);
  fl6.flowi6_mark = skb->mark;
  fl6.flowi6_proto = hdr->nexthdr;

  dst = ip6_route_output(net, ((void*)0), &fl6);
  if (dst->error) {
   err = dst->error;
   dst_release(dst);
   goto drop;
  }

  preempt_disable();
  dst_cache_set_ip6(&slwt->cache, dst, &fl6.saddr);
  preempt_enable();
 }

 skb_dst_drop(skb);
 skb_dst_set(skb, dst);

 err = skb_cow_head(skb, LL_RESERVED_SPACE(dst->dev));
 if (unlikely(err))
  goto drop;

 return dst_output(net, sk, skb);
drop:
 kfree_skb(skb);
 return err;
}
