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
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct address_space *mapping, loff_t to)
{
	struct inode *inode = mapping->host;
	loff_t i_size = FUNC5(inode);

	/* In the fs-verity case, f2fs_end_enable_verity() does the truncate */
	if (to > i_size && !FUNC4(inode)) {
		FUNC2(&FUNC0(inode)->i_gc_rwsem[WRITE]);
		FUNC2(&FUNC0(inode)->i_mmap_sem);

		FUNC6(inode, i_size);
		if (!FUNC1(inode))
			FUNC3(inode, i_size, true);

		FUNC7(&FUNC0(inode)->i_mmap_sem);
		FUNC7(&FUNC0(inode)->i_gc_rwsem[WRITE]);
	}
}