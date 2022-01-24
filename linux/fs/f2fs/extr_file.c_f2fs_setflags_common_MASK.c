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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct f2fs_inode_info {int i_flags; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int F2FS_CASEFOLD_FL ; 
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int F2FS_PROJINHERIT_FL ; 
 int /*<<< orphan*/  FI_PROJ_INHERIT ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, u32 iflags, u32 mask)
{
	struct f2fs_inode_info *fi = FUNC0(inode);

	/* Is it quota file? Do not allow user to mess with it */
	if (FUNC2(inode))
		return -EPERM;

	if ((iflags ^ fi->i_flags) & F2FS_CASEFOLD_FL) {
		if (!FUNC7(FUNC1(inode)))
			return -EOPNOTSUPP;
		if (!FUNC5(inode))
			return -ENOTEMPTY;
	}

	fi->i_flags = iflags | (fi->i_flags & ~mask);

	if (fi->i_flags & F2FS_PROJINHERIT_FL)
		FUNC9(inode, FI_PROJ_INHERIT);
	else
		FUNC3(inode, FI_PROJ_INHERIT);

	inode->i_ctime = FUNC4(inode);
	FUNC8(inode);
	FUNC6(inode, true);
	return 0;
}