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
struct vmap_block {scalar_t__ dirty; int free; int /*<<< orphan*/  lock; int /*<<< orphan*/  dirty_max; int /*<<< orphan*/  dirty_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ VMAP_BBMAP_BITS ; 
 int VMAP_BLOCK_SIZE ; 
 unsigned long VMAP_MAX_ALLOC ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct vmap_block*) ; 
 unsigned int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC9 (unsigned long) ; 
 struct vmap_block* FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_block_tree ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC16(const void *addr, unsigned long size)
{
	unsigned long offset;
	unsigned long vb_idx;
	unsigned int order;
	struct vmap_block *vb;

	FUNC0(FUNC9(size));
	FUNC0(size > PAGE_SIZE*VMAP_MAX_ALLOC);

	FUNC3((unsigned long)addr, (unsigned long)addr + size);

	order = FUNC6(size);

	offset = (unsigned long)addr & (VMAP_BLOCK_SIZE - 1);
	offset >>= PAGE_SHIFT;

	vb_idx = FUNC1((unsigned long)addr);
	FUNC11();
	vb = FUNC10(&vmap_block_tree, vb_idx);
	FUNC12();
	FUNC0(!vb);

	FUNC15((unsigned long)addr, (unsigned long)addr + size);

	if (FUNC2())
		FUNC4((unsigned long)addr,
					(unsigned long)addr + size);

	FUNC13(&vb->lock);

	/* Expand dirty range */
	vb->dirty_min = FUNC8(vb->dirty_min, offset);
	vb->dirty_max = FUNC7(vb->dirty_max, offset + (1UL << order));

	vb->dirty += 1UL << order;
	if (vb->dirty == VMAP_BBMAP_BITS) {
		FUNC0(vb->free);
		FUNC14(&vb->lock);
		FUNC5(vb);
	} else
		FUNC14(&vb->lock);
}