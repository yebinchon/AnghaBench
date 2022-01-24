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
struct inode {int /*<<< orphan*/  i_size; } ;
struct hfsplus_fork_raw {int /*<<< orphan*/  total_blocks; int /*<<< orphan*/  total_size; int /*<<< orphan*/  extents; } ;
typedef  int /*<<< orphan*/  hfsplus_extent_rec ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_blocks; int /*<<< orphan*/  first_extents; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct inode *inode,
		struct hfsplus_fork_raw *fork)
{
	FUNC3(&fork->extents, &FUNC0(inode)->first_extents,
	       sizeof(hfsplus_extent_rec));
	fork->total_size = FUNC2(inode->i_size);
	fork->total_blocks = FUNC1(FUNC0(inode)->alloc_blocks);
}