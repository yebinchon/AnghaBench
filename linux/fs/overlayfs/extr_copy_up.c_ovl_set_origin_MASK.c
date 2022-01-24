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
struct ovl_fh {int /*<<< orphan*/  len; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ovl_fh const*) ; 
 int /*<<< orphan*/  OVL_XATTR_ORIGIN ; 
 int FUNC1 (struct ovl_fh const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_fh const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dentry*,struct dentry*,int /*<<< orphan*/ ,struct ovl_fh const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ovl_fh* FUNC5 (struct dentry*,int) ; 

int FUNC6(struct dentry *dentry, struct dentry *lower,
		   struct dentry *upper)
{
	const struct ovl_fh *fh = NULL;
	int err;

	/*
	 * When lower layer doesn't support export operations store a 'null' fh,
	 * so we can use the overlay.origin xattr to distignuish between a copy
	 * up and a pure upper inode.
	 */
	if (FUNC3(lower->d_sb)) {
		fh = FUNC5(lower, false);
		if (FUNC0(fh))
			return FUNC1(fh);
	}

	/*
	 * Do not fail when upper doesn't support xattrs.
	 */
	err = FUNC4(dentry, upper, OVL_XATTR_ORIGIN, fh,
				 fh ? fh->len : 0, 0);
	FUNC2(fh);

	return err;
}