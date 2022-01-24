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
struct sk_buff {int pfmemalloc; int head_frag; struct net_device* dev; } ;
struct page_frag_cache {int pfmemalloc; } ;
struct net_device {int dummy; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int GFP_DMA ; 
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
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ napi_alloc_cache ; 
 int /*<<< orphan*/  netdev_alloc_cache ; 
 void* FUNC8 (struct page_frag_cache*,unsigned int,int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 struct page_frag_cache* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

struct sk_buff *FUNC14(struct net_device *dev, unsigned int len,
				   gfp_t gfp_mask)
{
	struct page_frag_cache *nc;
	struct sk_buff *skb;
	bool pfmemalloc;
	void *data;

	len += NET_SKB_PAD;

	if ((len > FUNC1(PAGE_SIZE)) ||
	    (gfp_mask & (__GFP_DIRECT_RECLAIM | GFP_DMA))) {
		skb = FUNC2(len, gfp_mask, SKB_ALLOC_RX, NUMA_NO_NODE);
		if (!skb)
			goto skb_fail;
		goto skb_success;
	}

	len += FUNC0(sizeof(struct skb_shared_info));
	len = FUNC0(len);

	if (FUNC9())
		gfp_mask |= __GFP_MEMALLOC;

	if (FUNC4() || FUNC5()) {
		nc = FUNC12(&netdev_alloc_cache);
		data = FUNC8(nc, len, gfp_mask);
		pfmemalloc = nc->pfmemalloc;
	} else {
		FUNC6();
		nc = FUNC12(&napi_alloc_cache.page);
		data = FUNC8(nc, len, gfp_mask);
		pfmemalloc = nc->pfmemalloc;
		FUNC7();
	}

	if (FUNC13(!data))
		return NULL;

	skb = FUNC3(data, len);
	if (FUNC13(!skb)) {
		FUNC10(data);
		return NULL;
	}

	/* use OR instead of assignment to avoid clearing of bits in mask */
	if (pfmemalloc)
		skb->pfmemalloc = 1;
	skb->head_frag = 1;

skb_success:
	FUNC11(skb, NET_SKB_PAD);
	skb->dev = dev;

skb_fail:
	return skb;
}