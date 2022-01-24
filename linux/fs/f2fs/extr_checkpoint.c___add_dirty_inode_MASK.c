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
struct inode {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * inode_list; } ;
typedef  enum inode_type { ____Placeholder_inode_type } inode_type ;
struct TYPE_2__ {int /*<<< orphan*/  dirty_list; } ;

/* Variables and functions */
 int DIR_INODE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int FI_DIRTY_DIR ; 
 int FI_DIRTY_FILE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, enum inode_type type)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	int flag = (type == DIR_INODE) ? FI_DIRTY_DIR : FI_DIRTY_FILE;

	if (FUNC3(inode, flag))
		return;

	FUNC5(inode, flag);
	if (!FUNC2(inode))
		FUNC4(&FUNC0(inode)->dirty_list,
						&sbi->inode_list[type]);
	FUNC6(sbi, type);
}