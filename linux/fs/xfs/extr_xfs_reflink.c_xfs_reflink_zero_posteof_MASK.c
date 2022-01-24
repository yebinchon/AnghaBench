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
struct xfs_inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  xfs_iomap_ops ; 

__attribute__((used)) static int
FUNC4(
	struct xfs_inode	*ip,
	loff_t			pos)
{
	loff_t			isize = FUNC1(FUNC0(ip));

	if (pos <= isize)
		return 0;

	FUNC3(ip, isize, pos - isize);
	return FUNC2(FUNC0(ip), isize, pos - isize, NULL,
			&xfs_iomap_ops);
}