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
struct vmap_area {unsigned long va_start; unsigned long va_end; int /*<<< orphan*/ * vm; int /*<<< orphan*/  rb_node; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct vmap_area* FUNC1 (int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 int GFP_RECLAIM_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int __GFP_NOWARN ; 
 unsigned long FUNC3 (unsigned long,unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vmap_area*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct vmap_area*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 struct vmap_area* FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct vmap_area*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  ne_fit_preload_node ; 
 int FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  vmap_area_cachep ; 
 int /*<<< orphan*/  vmap_area_list ; 
 int /*<<< orphan*/  vmap_area_lock ; 
 int /*<<< orphan*/  vmap_area_root ; 
 int /*<<< orphan*/  vmap_initialized ; 
 int /*<<< orphan*/  vmap_notify_list ; 

__attribute__((used)) static struct vmap_area *FUNC23(unsigned long size,
				unsigned long align,
				unsigned long vstart, unsigned long vend,
				int node, gfp_t gfp_mask)
{
	struct vmap_area *va, *pva;
	unsigned long addr;
	int purged = 0;

	FUNC0(!size);
	FUNC0(FUNC14(size));
	FUNC0(!FUNC9(align));

	if (FUNC22(!vmap_initialized))
		return FUNC1(-EBUSY);

	FUNC13();

	va = FUNC10(vmap_area_cachep,
			gfp_mask & GFP_RECLAIM_MASK, node);
	if (FUNC22(!va))
		return FUNC1(-ENOMEM);

	/*
	 * Only scan the relevant parts containing pointers to other objects
	 * to avoid false negatives.
	 */
	FUNC12(&va->rb_node, SIZE_MAX, gfp_mask & GFP_RECLAIM_MASK);

retry:
	/*
	 * Preload this CPU with one extra vmap_area object to ensure
	 * that we have it available when fit type of free area is
	 * NE_FIT_TYPE.
	 *
	 * The preload is done in non-atomic context, thus it allows us
	 * to use more permissive allocation masks to be more stable under
	 * low memory condition and high memory pressure.
	 *
	 * Even if it fails we do not really care about that. Just proceed
	 * as it is. "overflow" path will refill the cache we allocate from.
	 */
	FUNC16();
	if (!FUNC5(ne_fit_preload_node)) {
		FUNC17();
		pva = FUNC10(vmap_area_cachep, GFP_KERNEL, node);
		FUNC16();

		if (FUNC4(ne_fit_preload_node, NULL, pva)) {
			if (pva)
				FUNC11(vmap_area_cachep, pva);
		}
	}

	FUNC20(&vmap_area_lock);
	FUNC17();

	/*
	 * If an allocation fails, the "vend" address is
	 * returned. Therefore trigger the overflow path.
	 */
	addr = FUNC3(size, align, vstart, vend);
	if (FUNC22(addr == vend))
		goto overflow;

	va->va_start = addr;
	va->va_end = addr + size;
	va->vm = NULL;
	FUNC8(va, &vmap_area_root, &vmap_area_list);

	FUNC21(&vmap_area_lock);

	FUNC0(!FUNC2(va->va_start, align));
	FUNC0(va->va_start < vstart);
	FUNC0(va->va_end > vend);

	return va;

overflow:
	FUNC21(&vmap_area_lock);
	if (!purged) {
		FUNC19();
		purged = 1;
		goto retry;
	}

	if (FUNC7(gfp_mask)) {
		unsigned long freed = 0;
		FUNC6(&vmap_notify_list, 0, &freed);
		if (freed > 0) {
			purged = 0;
			goto retry;
		}
	}

	if (!(gfp_mask & __GFP_NOWARN) && FUNC18())
		FUNC15("vmap allocation for size %lu failed: use vmalloc=<size> to increase size\n",
			size);

	FUNC11(vmap_area_cachep, va);
	return FUNC1(-EBUSY);
}