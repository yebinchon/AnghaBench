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
struct inode {int i_opflags; int /*<<< orphan*/  i_lock; TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* permission ) (struct inode*,int) ;} ;

/* Variables and functions */
 int IOP_FASTPERM ; 
 int FUNC0 (struct inode*,int) ; 
 scalar_t__ FUNC1 (int (*) (struct inode*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct inode *inode, int mask)
{
	if (FUNC5(!(inode->i_opflags & IOP_FASTPERM))) {
		if (FUNC1(inode->i_op->permission))
			return inode->i_op->permission(inode, mask);

		/* This gets set once for the inode lifetime */
		FUNC2(&inode->i_lock);
		inode->i_opflags |= IOP_FASTPERM;
		FUNC3(&inode->i_lock);
	}
	return FUNC0(inode, mask);
}