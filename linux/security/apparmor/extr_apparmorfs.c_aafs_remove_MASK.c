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
 int /*<<< orphan*/  aafs_count ; 
 int /*<<< orphan*/  aafs_mnt ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct dentry*) ; 

__attribute__((used)) static void FUNC11(struct dentry *dentry)
{
	struct inode *dir;

	if (!dentry || FUNC0(dentry))
		return;

	dir = FUNC2(dentry->d_parent);
	FUNC5(dir);
	if (FUNC7(dentry)) {
		if (FUNC3(dentry))
			FUNC9(dir, dentry);
		else
			FUNC10(dir, dentry);
		FUNC1(dentry);
		FUNC4(dentry);
	}
	FUNC6(dir);
	FUNC8(&aafs_mnt, &aafs_count);
}