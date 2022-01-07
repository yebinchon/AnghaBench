
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_shared_info {int dummy; } ;
struct sk_buff {int pfmemalloc; int head_frag; int dev; } ;
struct napi_struct {int dev; } ;
struct TYPE_2__ {scalar_t__ pfmemalloc; } ;
struct napi_alloc_cache {TYPE_1__ page; } ;
typedef int gfp_t ;


 int GFP_DMA ;
 scalar_t__ NET_IP_ALIGN ;
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
 int napi_alloc_cache ;
 void* page_frag_alloc (TYPE_1__*,unsigned int,int) ;
 scalar_t__ sk_memalloc_socks () ;
 int skb_free_frag (void*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct napi_alloc_cache* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *__napi_alloc_skb(struct napi_struct *napi, unsigned int len,
     gfp_t gfp_mask)
{
 struct napi_alloc_cache *nc = this_cpu_ptr(&napi_alloc_cache);
 struct sk_buff *skb;
 void *data;

 len += NET_SKB_PAD + NET_IP_ALIGN;

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

 data = page_frag_alloc(&nc->page, len, gfp_mask);
 if (unlikely(!data))
  return ((void*)0);

 skb = __build_skb(data, len);
 if (unlikely(!skb)) {
  skb_free_frag(data);
  return ((void*)0);
 }


 if (nc->page.pfmemalloc)
  skb->pfmemalloc = 1;
 skb->head_frag = 1;

skb_success:
 skb_reserve(skb, NET_SKB_PAD + NET_IP_ALIGN);
 skb->dev = napi->dev;

skb_fail:
 return skb;
}
