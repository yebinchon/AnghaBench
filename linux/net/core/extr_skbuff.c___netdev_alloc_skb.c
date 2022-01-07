
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_shared_info {int dummy; } ;
struct sk_buff {int pfmemalloc; int head_frag; struct net_device* dev; } ;
struct page_frag_cache {int pfmemalloc; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int page; } ;


 int GFP_DMA ;
 scalar_t__ NET_SKB_PAD ;
 int NUMA_NO_NODE ;
 int PAGE_SIZE ;
 int SKB_ALLOC_RX ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 unsigned int SKB_WITH_OVERHEAD (int ) ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_MEMALLOC ;
 struct sk_buff* __alloc_skb (unsigned int,int,int ,int ) ;
 struct sk_buff* __build_skb (void*,unsigned int) ;
 scalar_t__ in_irq () ;
 scalar_t__ irqs_disabled () ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 TYPE_1__ napi_alloc_cache ;
 int netdev_alloc_cache ;
 void* page_frag_alloc (struct page_frag_cache*,unsigned int,int) ;
 scalar_t__ sk_memalloc_socks () ;
 int skb_free_frag (void*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct page_frag_cache* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *__netdev_alloc_skb(struct net_device *dev, unsigned int len,
       gfp_t gfp_mask)
{
 struct page_frag_cache *nc;
 struct sk_buff *skb;
 bool pfmemalloc;
 void *data;

 len += NET_SKB_PAD;

 if ((len > SKB_WITH_OVERHEAD(PAGE_SIZE)) ||
     (gfp_mask & (__GFP_DIRECT_RECLAIM | GFP_DMA))) {
  skb = __alloc_skb(len, gfp_mask, SKB_ALLOC_RX, NUMA_NO_NODE);
  if (!skb)
   goto skb_fail;
  goto skb_success;
 }

 len += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 len = SKB_DATA_ALIGN(len);

 if (sk_memalloc_socks())
  gfp_mask |= __GFP_MEMALLOC;

 if (in_irq() || irqs_disabled()) {
  nc = this_cpu_ptr(&netdev_alloc_cache);
  data = page_frag_alloc(nc, len, gfp_mask);
  pfmemalloc = nc->pfmemalloc;
 } else {
  local_bh_disable();
  nc = this_cpu_ptr(&napi_alloc_cache.page);
  data = page_frag_alloc(nc, len, gfp_mask);
  pfmemalloc = nc->pfmemalloc;
  local_bh_enable();
 }

 if (unlikely(!data))
  return ((void*)0);

 skb = __build_skb(data, len);
 if (unlikely(!skb)) {
  skb_free_frag(data);
  return ((void*)0);
 }


 if (pfmemalloc)
  skb->pfmemalloc = 1;
 skb->head_frag = 1;

skb_success:
 skb_reserve(skb, NET_SKB_PAD);
 skb->dev = dev;

skb_fail:
 return skb;
}
