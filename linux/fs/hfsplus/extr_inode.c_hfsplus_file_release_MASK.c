#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opencnt; struct inode* rsrc_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  hidden_dir; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int S_DEAD ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct super_block *sb = inode->i_sb;

	if (FUNC1(inode))
		inode = FUNC0(inode)->rsrc_inode;
	if (FUNC3(&FUNC0(inode)->opencnt)) {
		FUNC7(inode);
		FUNC6(inode);
		if (inode->i_flags & S_DEAD) {
			FUNC4(inode->i_ino,
					   FUNC2(sb)->hidden_dir, NULL);
			FUNC5(inode);
		}
		FUNC8(inode);
	}
	return 0;
}