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
struct ubifs_inode {scalar_t__ dirty; scalar_t__ ui_size; scalar_t__ xattr; } ;
struct TYPE_4__ {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_info {TYPE_2__ bi; } ;
struct inode {int /*<<< orphan*/  i_ino; scalar_t__ i_size; scalar_t__ i_nlink; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_count; scalar_t__ i_mode; TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,int /*<<< orphan*/ ,int) ; 
 struct ubifs_inode* FUNC9 (struct inode*) ; 
 int FUNC10 (struct ubifs_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,struct ubifs_inode*) ; 

__attribute__((used)) static void FUNC12(struct inode *inode)
{
	int err;
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	struct ubifs_inode *ui = FUNC9(inode);

	if (ui->xattr)
		/*
		 * Extended attribute inode deletions are fully handled in
		 * 'ubifs_removexattr()'. These inodes are special and have
		 * limited usage, so there is nothing to do here.
		 */
		goto out;

	FUNC2("inode %lu, mode %#x", inode->i_ino, (int)inode->i_mode);
	FUNC7(c, !FUNC0(&inode->i_count));

	FUNC6(&inode->i_data);

	if (inode->i_nlink)
		goto done;

	if (FUNC4(inode))
		goto out;

	ui->ui_size = inode->i_size = 0;
	err = FUNC10(c, inode);
	if (err)
		/*
		 * Worst case we have a lost orphan inode wasting space, so a
		 * simple error message is OK here.
		 */
		FUNC8(c, "can't delete inode %lu, error %d",
			  inode->i_ino, err);

out:
	if (ui->dirty)
		FUNC11(c, ui);
	else {
		/* We've deleted something - clean the "no space" flags */
		c->bi.nospace = c->bi.nospace_rp = 0;
		FUNC5();
	}
done:
	FUNC1(inode);
	FUNC3(inode);
}