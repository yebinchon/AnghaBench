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
struct dentry {int /*<<< orphan*/  d_inode; struct dentry* d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tracefs_mount ; 
 int /*<<< orphan*/  tracefs_mount_count ; 

void FUNC5(struct dentry *dentry)
{
	struct dentry *parent;
	int ret;

	if (FUNC0(dentry))
		return;

	parent = dentry->d_parent;
	FUNC2(parent->d_inode);
	ret = FUNC1(dentry, parent);
	FUNC3(parent->d_inode);
	if (!ret)
		FUNC4(&tracefs_mount, &tracefs_mount_count);
}