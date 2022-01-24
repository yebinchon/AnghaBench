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
struct inode {int i_generation; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_2__ {int /*<<< orphan*/  k_objectid; } ;

/* Variables and functions */
 int ENODATA ; 
 struct dentry* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode const*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_XATTR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC9 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct dentry*,int) ; 

__attribute__((used)) static struct dentry *FUNC15(const struct inode *inode, int flags)
{
	struct dentry *xaroot, *xadir;
	char namebuf[17];

	xaroot = FUNC10(inode->i_sb, flags);
	if (FUNC2(xaroot))
		return xaroot;

	FUNC11(namebuf, sizeof(namebuf), "%X.%X",
		 FUNC8(FUNC1(inode)->k_objectid),
		 inode->i_generation);

	FUNC6(FUNC3(xaroot), I_MUTEX_XATTR);

	xadir = FUNC9(namebuf, xaroot, FUNC12(namebuf));
	if (!FUNC2(xadir) && FUNC4(xadir)) {
		int err = -ENODATA;

		if (FUNC13(flags))
			err = FUNC14(FUNC3(xaroot), xadir, 0700);
		if (err) {
			FUNC5(xadir);
			xadir = FUNC0(err);
		}
	}

	FUNC7(FUNC3(xaroot));
	FUNC5(xaroot);
	return xadir;
}