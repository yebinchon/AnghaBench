#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct ext2_block_alloc_info {long last_alloc_logical_block; void* last_alloc_physical_block; } ;
typedef  void* ext2_fsblk_t ;
struct TYPE_5__ {struct ext2_block_alloc_info* i_block_alloc_info; } ;
struct TYPE_4__ {scalar_t__ bh; int /*<<< orphan*/  key; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static void FUNC6(struct inode *inode,
			long block, Indirect *where, int num, int blks)
{
	int i;
	struct ext2_block_alloc_info *block_i;
	ext2_fsblk_t current_block;

	block_i = FUNC0(inode)->i_block_alloc_info;

	/* XXX LOCKING probably should have i_meta_lock ?*/
	/* That's it */

	*where->p = where->key;

	/*
	 * Update the host buffer_head or inode to point to more just allocated
	 * direct blocks blocks
	 */
	if (num == 0 && blks > 1) {
		current_block = FUNC3(where->key) + 1;
		for (i = 1; i < blks; i++)
			*(where->p + i ) = FUNC1(current_block++);
	}

	/*
	 * update the most recently allocated logical & physical block
	 * in i_block_alloc_info, to assist find the proper goal block for next
	 * allocation
	 */
	if (block_i) {
		block_i->last_alloc_logical_block = block + blks - 1;
		block_i->last_alloc_physical_block =
				FUNC3(where[num].key) + blks - 1;
	}

	/* We are done with atomic stuff, now do the rest of housekeeping */

	/* had we spliced it onto indirect block? */
	if (where->bh)
		FUNC4(where->bh, inode);

	inode->i_ctime = FUNC2(inode);
	FUNC5(inode);
}