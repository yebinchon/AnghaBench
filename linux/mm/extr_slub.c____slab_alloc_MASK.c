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
struct page {int /*<<< orphan*/  frozen; } ;
struct kmem_cache_cpu {struct page* page; int /*<<< orphan*/  tid; void* freelist; } ;
struct kmem_cache {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_NODE_MISMATCH ; 
 int /*<<< orphan*/  ALLOC_REFILL ; 
 int /*<<< orphan*/  CPU_PARTIAL_ALLOC ; 
 int /*<<< orphan*/  DEACTIVATE_BYPASS ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,struct page*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,struct page*,void*,struct kmem_cache_cpu*) ; 
 void* FUNC3 (struct kmem_cache*,struct page*) ; 
 void* FUNC4 (struct kmem_cache*,void*) ; 
 scalar_t__ FUNC5 (struct kmem_cache*) ; 
 scalar_t__ FUNC6 (int) ; 
 void* FUNC7 (struct kmem_cache*,int /*<<< orphan*/ ,int,struct kmem_cache_cpu**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kmem_cache*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC14 (struct kmem_cache_cpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kmem_cache_cpu*,struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void *FUNC18(struct kmem_cache *s, gfp_t gfpflags, int node,
			  unsigned long addr, struct kmem_cache_cpu *c)
{
	void *freelist;
	struct page *page;

	page = c->page;
	if (!page)
		goto new_slab;
redo:

	if (FUNC17(!FUNC9(page, node))) {
		int searchnode = node;

		if (node != NUMA_NO_NODE && !FUNC10(node))
			searchnode = FUNC11(node);

		if (FUNC17(!FUNC9(page, searchnode))) {
			FUNC16(s, ALLOC_NODE_MISMATCH);
			FUNC2(s, page, c->freelist, c);
			goto new_slab;
		}
	}

	/*
	 * By rights, we should be searching for a slab page that was
	 * PFMEMALLOC but right now, we are losing the pfmemalloc
	 * information when the page leaves the per-cpu allocator
	 */
	if (FUNC17(!FUNC12(page, gfpflags))) {
		FUNC2(s, page, c->freelist, c);
		goto new_slab;
	}

	/* must check again c->freelist in case of cpu migration or IRQ */
	freelist = c->freelist;
	if (freelist)
		goto load_freelist;

	freelist = FUNC3(s, page);

	if (!freelist) {
		c->page = NULL;
		FUNC16(s, DEACTIVATE_BYPASS);
		goto new_slab;
	}

	FUNC16(s, ALLOC_REFILL);

load_freelist:
	/*
	 * freelist is pointing to the list of objects to be used.
	 * page is pointing to the page from which the objects are obtained.
	 * That page must be frozen for per cpu allocations to work.
	 */
	FUNC0(!c->page->frozen);
	c->freelist = FUNC4(s, freelist);
	c->tid = FUNC8(c->tid);
	return freelist;

new_slab:

	if (FUNC14(c)) {
		page = c->page = FUNC14(c);
		FUNC15(c, page);
		FUNC16(s, CPU_PARTIAL_ALLOC);
		goto redo;
	}

	freelist = FUNC7(s, gfpflags, node, &c);

	if (FUNC17(!freelist)) {
		FUNC13(s, gfpflags, node);
		return NULL;
	}

	page = c->page;
	if (FUNC6(!FUNC5(s) && FUNC12(page, gfpflags)))
		goto load_freelist;

	/* Only entered in the debug case */
	if (FUNC5(s) &&
			!FUNC1(s, page, freelist, addr))
		goto new_slab;	/* Slab failed checks. Next slab needed */

	FUNC2(s, page, FUNC4(s, freelist), c);
	return freelist;
}