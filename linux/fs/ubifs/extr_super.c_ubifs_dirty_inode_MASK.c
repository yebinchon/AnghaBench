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
struct ubifs_inode {int dirty; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC3 (struct inode*) ; 

__attribute__((used)) static void FUNC4(struct inode *inode, int flags)
{
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	struct ubifs_inode *ui = FUNC3(inode);

	FUNC2(c, FUNC1(&ui->ui_mutex));
	if (!ui->dirty) {
		ui->dirty = 1;
		FUNC0("inode %lu",  inode->i_ino);
	}
}