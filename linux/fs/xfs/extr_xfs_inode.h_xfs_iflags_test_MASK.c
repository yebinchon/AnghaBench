#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i_flags_lock; } ;
typedef  TYPE_1__ xfs_inode_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC3(xfs_inode_t *ip, unsigned short flags)
{
	int ret;
	FUNC1(&ip->i_flags_lock);
	ret = FUNC0(ip, flags);
	FUNC2(&ip->i_flags_lock);
	return ret;
}