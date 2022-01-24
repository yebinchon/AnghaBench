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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  OVL_XATTR_METACOPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct dentry *dentry)
{
	int res;

	/* Only regular files can have metacopy xattr */
	if (!FUNC0(FUNC1(dentry)->i_mode))
		return 0;

	res = FUNC3(dentry, OVL_XATTR_METACOPY, NULL, 0);
	if (res < 0) {
		if (res == -ENODATA || res == -EOPNOTSUPP)
			return 0;
		goto out;
	}

	return 1;
out:
	FUNC2("overlayfs: failed to get metacopy (%i)\n", res);
	return res;
}