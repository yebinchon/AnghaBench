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
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_root; struct dentry* priv_root; } ;

/* Variables and functions */
 int ENODATA ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  I_MUTEX_XATTR ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct dentry*,int) ; 

__attribute__((used)) static struct dentry *FUNC10(struct super_block *sb, int flags)
{
	struct dentry *privroot = FUNC1(sb)->priv_root;
	struct dentry *xaroot;

	if (FUNC3(privroot))
		return FUNC0(-ENODATA);

	FUNC6(FUNC2(privroot), I_MUTEX_XATTR);

	xaroot = FUNC4(FUNC1(sb)->xattr_root);
	if (!xaroot)
		xaroot = FUNC0(-ENODATA);
	else if (FUNC3(xaroot)) {
		int err = -ENODATA;

		if (FUNC8(flags))
			err = FUNC9(FUNC2(privroot), xaroot, 0700);
		if (err) {
			FUNC5(xaroot);
			xaroot = FUNC0(err);
		}
	}

	FUNC7(FUNC2(privroot));
	return xaroot;
}