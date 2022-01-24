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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dirty_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_DATA ; 
 int /*<<< orphan*/  F2FS_DIRTY_DENTS ; 
 int /*<<< orphan*/  F2FS_DIRTY_QDATA ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct inode *inode)
{
	FUNC4(&FUNC0(inode)->dirty_pages);
	FUNC5(FUNC1(inode), FUNC3(inode->i_mode) ?
				F2FS_DIRTY_DENTS : F2FS_DIRTY_DATA);
	if (FUNC2(inode))
		FUNC5(FUNC1(inode), F2FS_DIRTY_QDATA);
}