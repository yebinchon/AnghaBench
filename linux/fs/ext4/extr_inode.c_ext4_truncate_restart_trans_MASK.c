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
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(handle_t *handle, struct inode *inode,
				 int nblocks)
{
	int ret;

	/*
	 * Drop i_data_sem to avoid deadlock with ext4_map_blocks.  At this
	 * moment, get_block can be called only for blocks inside i_size since
	 * page cache has been already dropped and writes are blocked by
	 * i_mutex. So we can safely drop the i_data_sem here.
	 */
	FUNC0(FUNC2(inode) == NULL);
	FUNC6(2, "restarting handle %p\n", handle);
	FUNC7(&FUNC1(inode)->i_data_sem);
	ret = FUNC5(handle, nblocks);
	FUNC3(&FUNC1(inode)->i_data_sem);
	FUNC4(inode);

	return ret;
}