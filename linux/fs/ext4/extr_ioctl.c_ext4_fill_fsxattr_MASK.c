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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fsxattr {int /*<<< orphan*/  fsx_projid; } ;
struct ext4_inode_info {int i_flags; int /*<<< orphan*/  i_projid; } ;

/* Variables and functions */
 int EXT4_FL_USER_VISIBLE ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (struct fsxattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *inode, struct fsxattr *fa)
{
	struct ext4_inode_info *ei = FUNC0(inode);

	FUNC4(fa, FUNC2(ei->i_flags &
						      EXT4_FL_USER_VISIBLE));

	if (FUNC1(inode->i_sb))
		fa->fsx_projid = FUNC3(&init_user_ns, ei->i_projid);
}