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
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/ * FUNC0 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct dentry*) ; 

int FUNC3(struct dentry *workdir, struct dentry *upperdir)
{
	/* Workdir should not be the same as upperdir */
	if (workdir == upperdir)
		goto err;

	/* Workdir should not be subdir of upperdir and vice versa */
	if (FUNC0(workdir, upperdir) != NULL)
		goto err_unlock;

	return 0;

err_unlock:
	FUNC2(workdir, upperdir);
err:
	FUNC1("overlayfs: failed to lock workdir+upperdir\n");
	return -EIO;
}