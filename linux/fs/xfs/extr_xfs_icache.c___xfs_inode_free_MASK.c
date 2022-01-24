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
struct xfs_inode {int /*<<< orphan*/  i_mount; int /*<<< orphan*/  i_pincount; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vn_active ; 
 int /*<<< orphan*/  xfs_inode_free_callback ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_inode	*ip)
{
	/* asserts to verify all state is correct here */
	FUNC0(FUNC3(&ip->i_pincount) == 0);
	FUNC2(ip->i_mount, vn_active);

	FUNC4(&FUNC1(ip)->i_rcu, xfs_inode_free_callback);
}