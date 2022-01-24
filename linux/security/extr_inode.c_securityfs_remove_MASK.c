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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  mount ; 
 int /*<<< orphan*/  mount_count ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct dentry*) ; 

void FUNC10(struct dentry *dentry)
{
	struct inode *dir;

	if (!dentry || FUNC0(dentry))
		return;

	dir = FUNC1(dentry->d_parent);
	FUNC4(dir);
	if (FUNC6(dentry)) {
		if (FUNC2(dentry))
			FUNC8(dir, dentry);
		else
			FUNC9(dir, dentry);
		FUNC3(dentry);
	}
	FUNC5(dir);
	FUNC7(&mount, &mount_count);
}