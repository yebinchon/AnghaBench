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
struct TYPE_2__ {int ip_flags; int /*<<< orphan*/  ip_lock; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,unsigned long long,unsigned long long) ; 

int FUNC8(struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);
	int status = 0;

	FUNC7(inode,
		inode ? (unsigned long long)FUNC0(inode)->ip_blkno : 0ULL,
		inode ? (unsigned long long)FUNC0(inode)->ip_flags : 0);

	if (!inode) {
		status = -ENOENT;
		goto bail;
	}

	FUNC5(&FUNC0(inode)->ip_lock);
	if (FUNC0(inode)->ip_flags & OCFS2_INODE_DELETED) {
		FUNC6(&FUNC0(inode)->ip_lock);
		status = -ENOENT;
		goto bail;
	}
	FUNC6(&FUNC0(inode)->ip_lock);

	/* Let ocfs2_inode_lock do the work of updating our struct
	 * inode for us. */
	status = FUNC3(inode, NULL, 0);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC2(status);
		goto bail;
	}
	FUNC4(inode, 0);
bail:
	return status;
}