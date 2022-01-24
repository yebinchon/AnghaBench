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
struct TYPE_3__ {unsigned short i_flags; int /*<<< orphan*/  i_flags_lock; } ;
typedef  TYPE_1__ xfs_inode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC2(xfs_inode_t *ip, unsigned short flags)
{
	int ret;

	FUNC0(&ip->i_flags_lock);
	ret = ip->i_flags & flags;
	if (!ret)
		ip->i_flags |= flags;
	FUNC1(&ip->i_flags_lock);
	return ret;
}