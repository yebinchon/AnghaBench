#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct xfs_inode {int /*<<< orphan*/  i_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  XFS_INEW ; 
 int /*<<< orphan*/  __XFS_INEW_BIT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ wait ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(
	struct xfs_inode	*ip)
{
	wait_queue_head_t *wq = FUNC1(&ip->i_flags, __XFS_INEW_BIT);
	FUNC0(wait, &ip->i_flags, __XFS_INEW_BIT);

	do {
		FUNC3(wq, &wait.wq_entry, TASK_UNINTERRUPTIBLE);
		if (!FUNC5(ip, XFS_INEW))
			break;
		FUNC4();
	} while (true);
	FUNC2(wq, &wait.wq_entry);
}