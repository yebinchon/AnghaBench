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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 

__attribute__((used)) static void FUNC6(struct dentry *dentry, bool impurity)
{
	struct inode *inode = FUNC3(dentry);

	FUNC2(!FUNC4(inode));
	/*
	 * Version is used by readdir code to keep cache consistent.  For merge
	 * dirs all changes need to be noted.  For non-merge dirs, cache only
	 * contains impure (ones which have been copied up and have origins)
	 * entries, so only need to note changes to impure entries.
	 */
	if (FUNC1(FUNC5(dentry)) || impurity)
		FUNC0(inode)->version++;
}