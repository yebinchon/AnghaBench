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
struct inode {int i_opflags; int /*<<< orphan*/  i_mode; TYPE_1__* i_op; } ;
struct TYPE_2__ {int get_link; int /*<<< orphan*/  lookup; } ;

/* Variables and functions */
 unsigned int DCACHE_AUTODIR_TYPE ; 
 unsigned int DCACHE_DIRECTORY_TYPE ; 
 int DCACHE_MISS_TYPE ; 
 unsigned int DCACHE_NEED_AUTOMOUNT ; 
 unsigned int DCACHE_REGULAR_TYPE ; 
 unsigned int DCACHE_SPECIAL_TYPE ; 
 unsigned int DCACHE_SYMLINK_TYPE ; 
 int IOP_LOOKUP ; 
 int IOP_NOFOLLOW ; 
 int FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static unsigned FUNC4(struct inode *inode)
{
	unsigned add_flags = DCACHE_REGULAR_TYPE;

	if (!inode)
		return DCACHE_MISS_TYPE;

	if (FUNC1(inode->i_mode)) {
		add_flags = DCACHE_DIRECTORY_TYPE;
		if (FUNC3(!(inode->i_opflags & IOP_LOOKUP))) {
			if (FUNC3(!inode->i_op->lookup))
				add_flags = DCACHE_AUTODIR_TYPE;
			else
				inode->i_opflags |= IOP_LOOKUP;
		}
		goto type_determined;
	}

	if (FUNC3(!(inode->i_opflags & IOP_NOFOLLOW))) {
		if (FUNC3(inode->i_op->get_link)) {
			add_flags = DCACHE_SYMLINK_TYPE;
			goto type_determined;
		}
		inode->i_opflags |= IOP_NOFOLLOW;
	}

	if (FUNC3(!FUNC2(inode->i_mode)))
		add_flags = DCACHE_SPECIAL_TYPE;

type_determined:
	if (FUNC3(FUNC0(inode)))
		add_flags |= DCACHE_NEED_AUTOMOUNT;
	return add_flags;
}