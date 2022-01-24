#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct napi_alloc_cache {scalar_t__ skb_count; struct sk_buff** skb_cache; } ;

/* Variables and functions */
 scalar_t__ NAPI_SKB_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct sk_buff**) ; 
 int /*<<< orphan*/  napi_alloc_cache ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  skbuff_head_cache ; 
 struct napi_alloc_cache* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct sk_buff *skb)
{
	struct napi_alloc_cache *nc = FUNC3(&napi_alloc_cache);

	/* drop skb->head and call any destructors for packet */
	FUNC2(skb);

	/* record skb to CPU local list */
	nc->skb_cache[nc->skb_count++] = skb;

#ifdef CONFIG_SLUB
	/* SLUB writes into objects when freeing */
	prefetchw(skb);
#endif

	/* flush skb_cache if it is filled */
	if (FUNC4(nc->skb_count == NAPI_SKB_CACHE_SIZE)) {
		FUNC0(skbuff_head_cache, NAPI_SKB_CACHE_SIZE,
				     nc->skb_cache);
		nc->skb_count = 0;
	}
}