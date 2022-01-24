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
struct page_frag_cache {void* va; unsigned int size; unsigned int offset; void* pagecnt_bias; int /*<<< orphan*/  pfmemalloc; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* PAGE_FRAG_CACHE_MAX_SIZE ; 
 unsigned int PAGE_SIZE ; 
 struct page* FUNC0 (struct page_frag_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,void*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct page* FUNC6 (void*) ; 

void *FUNC7(struct page_frag_cache *nc,
		      unsigned int fragsz, gfp_t gfp_mask)
{
	unsigned int size = PAGE_SIZE;
	struct page *page;
	int offset;

	if (FUNC5(!nc->va)) {
refill:
		page = FUNC0(nc, gfp_mask);
		if (!page)
			return NULL;

#if (PAGE_SIZE < PAGE_FRAG_CACHE_MAX_SIZE)
		/* if size can vary use size else just use PAGE_SIZE */
		size = nc->size;
#endif
		/* Even if we own the page, we do not use atomic_set().
		 * This would break get_page_unless_zero() users.
		 */
		FUNC2(page, PAGE_FRAG_CACHE_MAX_SIZE);

		/* reset page count bias and offset to start of new frag */
		nc->pfmemalloc = FUNC1(page);
		nc->pagecnt_bias = PAGE_FRAG_CACHE_MAX_SIZE + 1;
		nc->offset = size;
	}

	offset = nc->offset - fragsz;
	if (FUNC5(offset < 0)) {
		page = FUNC6(nc->va);

		if (!FUNC3(page, nc->pagecnt_bias))
			goto refill;

#if (PAGE_SIZE < PAGE_FRAG_CACHE_MAX_SIZE)
		/* if size can vary use size else just use PAGE_SIZE */
		size = nc->size;
#endif
		/* OK, page count is 0, we can safely set it */
		FUNC4(page, PAGE_FRAG_CACHE_MAX_SIZE + 1);

		/* reset page count bias and offset to start of new frag */
		nc->pagecnt_bias = PAGE_FRAG_CACHE_MAX_SIZE + 1;
		offset = size - fragsz;
	}

	nc->pagecnt_bias--;
	nc->offset = offset;

	return nc->va + offset;
}