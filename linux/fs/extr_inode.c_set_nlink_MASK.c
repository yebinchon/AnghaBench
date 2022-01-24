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
struct inode {scalar_t__ i_nlink; unsigned int __i_nlink; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_remove_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

void FUNC2(struct inode *inode, unsigned int nlink)
{
	if (!nlink) {
		FUNC1(inode);
	} else {
		/* Yes, some filesystems do change nlink from zero to one */
		if (inode->i_nlink == 0)
			FUNC0(&inode->i_sb->s_remove_count);

		inode->__i_nlink = nlink;
	}
}