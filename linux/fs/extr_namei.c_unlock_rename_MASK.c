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
struct dentry {TYPE_1__* d_sb; int /*<<< orphan*/  d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_vfs_rename_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct dentry *p1, struct dentry *p2)
{
	FUNC0(p1->d_inode);
	if (p1 != p2) {
		FUNC0(p2->d_inode);
		FUNC1(&p1->d_sb->s_vfs_rename_mutex);
	}
}