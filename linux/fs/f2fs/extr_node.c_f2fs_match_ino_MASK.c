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
struct inode {unsigned long i_ino; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  gdirty_list; } ;

/* Variables and functions */
 size_t DIRTY_META ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 struct inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, unsigned long ino, void *data)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	bool clean;

	if (inode->i_ino != ino)
		return 0;

	if (!FUNC3(inode, FI_DIRTY_INODE))
		return 0;

	FUNC5(&sbi->inode_lock[DIRTY_META]);
	clean = FUNC4(&FUNC0(inode)->gdirty_list);
	FUNC6(&sbi->inode_lock[DIRTY_META]);

	if (clean)
		return 0;

	inode = FUNC2(inode);
	if (!inode)
		return 0;
	return 1;
}