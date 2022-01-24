#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {scalar_t__ cp_task; } ;
struct TYPE_3__ {scalar_t__ min_seq_blocks; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ FUNC5 (struct inode*) ; 

__attribute__((used)) static inline bool FUNC6(struct inode *inode,
					struct writeback_control *wbc)
{
	if (!FUNC4(inode->i_mode))
		return false;
	if (FUNC2(inode))
		return false;
	/* to avoid deadlock in path of data flush */
	if (FUNC0(inode)->cp_task)
		return false;
	if (wbc->sync_mode != WB_SYNC_ALL)
		return true;
	if (FUNC5(inode) >= FUNC3(FUNC1(inode))->min_seq_blocks)
		return true;
	return false;
}