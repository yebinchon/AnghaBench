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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_lockres; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct dentry*,...) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *dir,
			struct dentry *dentry)
{
	int status;
	struct inode *inode = FUNC1(dentry);

	FUNC2(0, "unlink inode %lu\n", inode->i_ino);

	/* if there are no current holders, or none that are waiting
	 * to acquire a lock, this basically destroys our lockres. */
	status = FUNC4(&FUNC0(inode)->ip_lockres);
	if (status < 0) {
		FUNC2(ML_ERROR, "unlink %pd, error %d from destroy\n",
		     dentry, status);
		goto bail;
	}
	status = FUNC3(dir, dentry);
bail:
	return status;
}