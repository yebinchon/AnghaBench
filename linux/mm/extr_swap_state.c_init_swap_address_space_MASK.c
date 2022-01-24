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
struct address_space {int /*<<< orphan*/ * a_ops; int /*<<< orphan*/  i_mmap_writable; int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SWAP_ADDRESS_SPACE_PAGES ; 
 int /*<<< orphan*/  XA_FLAGS_LOCK_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct address_space* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 unsigned int* nr_swapper_spaces ; 
 int /*<<< orphan*/  swap_aops ; 
 struct address_space** swapper_spaces ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(unsigned int type, unsigned long nr_pages)
{
	struct address_space *spaces, *space;
	unsigned int i, nr;

	nr = FUNC0(nr_pages, SWAP_ADDRESS_SPACE_PAGES);
	spaces = FUNC2(nr, sizeof(struct address_space), GFP_KERNEL);
	if (!spaces)
		return -ENOMEM;
	for (i = 0; i < nr; i++) {
		space = spaces + i;
		FUNC4(&space->i_pages, XA_FLAGS_LOCK_IRQ);
		FUNC1(&space->i_mmap_writable, 0);
		space->a_ops = &swap_aops;
		/* swap cache doesn't use writeback related tags */
		FUNC3(space);
	}
	nr_swapper_spaces[type] = nr;
	swapper_spaces[type] = spaces;

	return 0;
}