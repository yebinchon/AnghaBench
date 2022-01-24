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
struct dentry {int /*<<< orphan*/  d_inode; TYPE_1__* d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_vfs_rename_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  I_MUTEX_PARENT2 ; 
 struct dentry* FUNC0 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC3(struct dentry *p1, struct dentry *p2)
{
	struct dentry *p;

	if (p1 == p2) {
		FUNC1(p1->d_inode, I_MUTEX_PARENT);
		return NULL;
	}

	FUNC2(&p1->d_sb->s_vfs_rename_mutex);

	p = FUNC0(p2, p1);
	if (p) {
		FUNC1(p2->d_inode, I_MUTEX_PARENT);
		FUNC1(p1->d_inode, I_MUTEX_CHILD);
		return p;
	}

	p = FUNC0(p1, p2);
	if (p) {
		FUNC1(p1->d_inode, I_MUTEX_PARENT);
		FUNC1(p2->d_inode, I_MUTEX_CHILD);
		return p;
	}

	FUNC1(p1->d_inode, I_MUTEX_PARENT);
	FUNC1(p2->d_inode, I_MUTEX_PARENT2);
	return NULL;
}