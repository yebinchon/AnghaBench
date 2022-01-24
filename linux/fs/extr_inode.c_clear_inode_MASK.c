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
struct TYPE_2__ {int nrpages; int nrexceptional; int /*<<< orphan*/  private_list; int /*<<< orphan*/  i_pages; } ;
struct inode {int i_state; int /*<<< orphan*/  i_wb_list; TYPE_1__ i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CLEAR ; 
 int I_FREEING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *inode)
{
	/*
	 * We have to cycle the i_pages lock here because reclaim can be in the
	 * process of removing the last page (in __delete_from_page_cache())
	 * and we must not free the mapping under it.
	 */
	FUNC2(&inode->i_data.i_pages);
	FUNC0(inode->i_data.nrpages);
	FUNC0(inode->i_data.nrexceptional);
	FUNC3(&inode->i_data.i_pages);
	FUNC0(!FUNC1(&inode->i_data.private_list));
	FUNC0(!(inode->i_state & I_FREEING));
	FUNC0(inode->i_state & I_CLEAR);
	FUNC0(!FUNC1(&inode->i_wb_list));
	/* don't need i_lock here, no concurrent mods to i_state */
	inode->i_state = I_FREEING | I_CLEAR;
}