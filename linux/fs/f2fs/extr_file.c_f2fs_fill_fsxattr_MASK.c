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
struct fsxattr {int /*<<< orphan*/  fsx_projid; } ;
struct f2fs_inode_info {int /*<<< orphan*/  i_projid; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC5 (struct fsxattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, struct fsxattr *fa)
{
	struct f2fs_inode_info *fi = FUNC0(inode);

	FUNC5(fa, FUNC2(fi->i_flags));

	if (FUNC3(FUNC1(inode)))
		fa->fsx_projid = FUNC4(&init_user_ns, fi->i_projid);
}