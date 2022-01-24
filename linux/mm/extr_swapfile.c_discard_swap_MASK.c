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
struct swap_info_struct {int /*<<< orphan*/  bdev; } ;
struct swap_extent {int start_block; scalar_t__ nr_pages; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct swap_extent* FUNC2 (struct swap_info_struct*) ; 
 struct swap_extent* FUNC3 (struct swap_extent*) ; 

__attribute__((used)) static int FUNC4(struct swap_info_struct *si)
{
	struct swap_extent *se;
	sector_t start_block;
	sector_t nr_blocks;
	int err = 0;

	/* Do not discard the swap header page! */
	se = FUNC2(si);
	start_block = (se->start_block + 1) << (PAGE_SHIFT - 9);
	nr_blocks = ((sector_t)se->nr_pages - 1) << (PAGE_SHIFT - 9);
	if (nr_blocks) {
		err = FUNC0(si->bdev, start_block,
				nr_blocks, GFP_KERNEL, 0);
		if (err)
			return err;
		FUNC1();
	}

	for (se = FUNC3(se); se; se = FUNC3(se)) {
		start_block = se->start_block << (PAGE_SHIFT - 9);
		nr_blocks = (sector_t)se->nr_pages << (PAGE_SHIFT - 9);

		err = FUNC0(si->bdev, start_block,
				nr_blocks, GFP_KERNEL, 0);
		if (err)
			break;

		FUNC1();
	}
	return err;		/* That will often be -EOPNOTSUPP */
}