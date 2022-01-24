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
struct xfs_inode {unsigned int i_sick; unsigned int i_checked; int /*<<< orphan*/  i_flags_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int XFS_SICK_INO_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,unsigned int) ; 

void
FUNC4(
	struct xfs_inode	*ip,
	unsigned int		mask)
{
	FUNC0(!(mask & ~XFS_SICK_INO_PRIMARY));
	FUNC3(ip, mask);

	FUNC1(&ip->i_flags_lock);
	ip->i_sick &= ~mask;
	ip->i_checked |= mask;
	FUNC2(&ip->i_flags_lock);
}