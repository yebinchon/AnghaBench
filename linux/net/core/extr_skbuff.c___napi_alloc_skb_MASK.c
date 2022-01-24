#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skb_shared_info {int dummy; } ;
struct sk_buff {int pfmemalloc; int head_frag; int /*<<< orphan*/  dev; } ;
struct napi_struct {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ pfmemalloc; } ;
struct napi_alloc_cache {TYPE_1__ page; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_DMA ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ NET_SKB_PAD ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SKB_ALLOC_RX ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_MEMALLOC ; 
 struct sk_buff* FUNC2 (unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (void*,unsigned int) ; 
 int /*<<< orphan*/  napi_alloc_cache ; 
 void* FUNC4 (TYPE_1__*,unsigned int,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 struct napi_alloc_cache* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

struct sk_buff *FUNC10(struct napi_struct *napi, unsigned int len,
				 gfp_t gfp_mask)
{
	struct napi_alloc_cache *nc = FUNC8(&napi_alloc_cache);
	struct sk_buff *skb;
	void *data;

	len += NET_SKB_PAD + NET_IP_ALIGN;

	if ((len > FUNC1(PAGE_SIZE)) ||
	    (gfp_mask & (__GFP_DIRECT_RECLAIM | GFP_DMA))) {
		skb = FUNC2(len, gfp_mask, SKB_ALLOC_RX, NUMA_NO_NODE);
		if (!skb)
			goto skb_fail;
		goto skb_success;
	}

	len += FUNC0(sizeof(struct skb_shared_info));
	len = FUNC0(len);

	if (FUNC5())
		gfp_mask |= __GFP_MEMALLOC;

	data = FUNC4(&nc->page, len, gfp_mask);
	if (FUNC9(!data))
		return NULL;

	skb = FUNC3(data, len);
	if (FUNC9(!skb)) {
		FUNC6(data);
		return NULL;
	}

	/* use OR instead of assignment to avoid clearing of bits in mask */
	if (nc->page.pfmemalloc)
		skb->pfmemalloc = 1;
	skb->head_frag = 1;

skb_success:
	FUNC7(skb, NET_SKB_PAD + NET_IP_ALIGN);
	skb->dev = napi->dev;

skb_fail:
	return skb;
}