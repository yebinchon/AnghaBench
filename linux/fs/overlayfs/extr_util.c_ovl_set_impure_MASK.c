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
 int /*<<< orphan*/  OVL_IMPURE ; 
 int /*<<< orphan*/  OVL_XATTR_IMPURE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*,struct dentry*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct dentry *dentry, struct dentry *upperdentry)
{
	int err;

	if (FUNC3(OVL_IMPURE, FUNC0(dentry)))
		return 0;

	/*
	 * Do not fail when upper doesn't support xattrs.
	 * Upper inodes won't have origin nor redirect xattr anyway.
	 */
	err = FUNC1(dentry, upperdentry, OVL_XATTR_IMPURE,
				 "y", 1, 0);
	if (!err)
		FUNC2(OVL_IMPURE, FUNC0(dentry));

	return err;
}