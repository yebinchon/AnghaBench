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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 
 int FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct dentry*,int) ; 

int FUNC6(struct inode *wdir, struct dentry *wdentry)
{
	int err;

	FUNC1(wdentry);
	if (FUNC0(wdentry))
		err = FUNC3(wdir, wdentry);
	else
		err = FUNC4(wdir, wdentry);
	FUNC2(wdentry);

	if (err) {
		FUNC5("overlayfs: cleanup of '%pd2' failed (%i)\n",
		       wdentry, err);
	}

	return err;
}