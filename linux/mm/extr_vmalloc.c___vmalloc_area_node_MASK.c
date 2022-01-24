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
struct vm_struct {void* addr; unsigned int nr_pages; int /*<<< orphan*/  size; struct page** pages; int /*<<< orphan*/  caller; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_DMA32 ; 
 int GFP_RECLAIM_MASK ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct page** FUNC1 (unsigned int,int,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int const) ; 
 struct page* FUNC3 (int,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (struct vm_struct*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_struct*) ; 
 struct page** FUNC9 (unsigned int,int const,int) ; 
 scalar_t__ FUNC10 (struct vm_struct*,int /*<<< orphan*/ ,struct page**) ; 
 int /*<<< orphan*/  nr_vmalloc_pages ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC14(struct vm_struct *area, gfp_t gfp_mask,
				 pgprot_t prot, int node)
{
	struct page **pages;
	unsigned int nr_pages, array_size, i;
	const gfp_t nested_gfp = (gfp_mask & GFP_RECLAIM_MASK) | __GFP_ZERO;
	const gfp_t alloc_mask = gfp_mask | __GFP_NOWARN;
	const gfp_t highmem_mask = (gfp_mask & (GFP_DMA | GFP_DMA32)) ?
					0 :
					__GFP_HIGHMEM;

	nr_pages = FUNC6(area) >> PAGE_SHIFT;
	array_size = (nr_pages * sizeof(struct page *));

	/* Please note that the recursion is strictly bounded. */
	if (array_size > PAGE_SIZE) {
		pages = FUNC1(array_size, 1, nested_gfp|highmem_mask,
				PAGE_KERNEL, node, area->caller);
	} else {
		pages = FUNC9(array_size, nested_gfp, node);
	}

	if (!pages) {
		FUNC11(area->addr);
		FUNC8(area);
		return NULL;
	}

	area->pages = pages;
	area->nr_pages = nr_pages;

	for (i = 0; i < area->nr_pages; i++) {
		struct page *page;

		if (node == NUMA_NO_NODE)
			page = FUNC2(alloc_mask|highmem_mask);
		else
			page = FUNC3(node, alloc_mask|highmem_mask, 0);

		if (FUNC12(!page)) {
			/* Successfully allocated i pages, free them in __vunmap() */
			area->nr_pages = i;
			FUNC4(area->nr_pages, &nr_vmalloc_pages);
			goto fail;
		}
		area->pages[i] = page;
		if (FUNC7(gfp_mask|highmem_mask))
			FUNC5();
	}
	FUNC4(area->nr_pages, &nr_vmalloc_pages);

	if (FUNC10(area, prot, pages))
		goto fail;
	return area->addr;

fail:
	FUNC13(gfp_mask, NULL,
			  "vmalloc: allocation failure, allocated %ld of %ld bytes",
			  (area->nr_pages*PAGE_SIZE), area->size);
	FUNC0(area->addr);
	return NULL;
}