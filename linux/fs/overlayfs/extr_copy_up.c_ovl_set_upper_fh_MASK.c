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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ovl_fh const*) ; 
 int /*<<< orphan*/  OVL_XATTR_UPPER ; 
 int FUNC1 (struct ovl_fh const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_fh const*) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ,struct ovl_fh const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ovl_fh* FUNC4 (struct dentry*,int) ; 

__attribute__((used)) static int FUNC5(struct dentry *upper, struct dentry *index)
{
	const struct ovl_fh *fh;
	int err;

	fh = FUNC4(upper, true);
	if (FUNC0(fh))
		return FUNC1(fh);

	err = FUNC3(index, OVL_XATTR_UPPER, fh, fh->len, 0);

	FUNC2(fh);
	return err;
}