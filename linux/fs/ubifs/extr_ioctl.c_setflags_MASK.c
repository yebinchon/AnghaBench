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
struct ubifs_inode {int dirty; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  flags; int /*<<< orphan*/  data_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_ctime; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*,int,int) ; 
 int FUNC13 (struct inode*,int) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, int flags)
{
	int oldflags, err, release;
	struct ubifs_inode *ui = FUNC9(inode);
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	struct ubifs_budget_req req = { .dirtied_ino = 1,
					.dirtied_ino_d = ui->data_len };

	err = FUNC7(c, &req);
	if (err)
		return err;

	FUNC4(&ui->ui_mutex);
	oldflags = FUNC6(ui->flags);
	err = FUNC12(inode, oldflags, flags);
	if (err)
		goto out_unlock;

	ui->flags = FUNC2(flags);
	FUNC11(inode);
	inode->i_ctime = FUNC1(inode);
	release = ui->dirty;
	FUNC3(inode);
	FUNC5(&ui->ui_mutex);

	if (release)
		FUNC10(c, &req);
	if (FUNC0(inode))
		err = FUNC13(inode, 1);
	return err;

out_unlock:
	FUNC8(c, "can't modify inode %lu attributes", inode->i_ino);
	FUNC5(&ui->ui_mutex);
	FUNC10(c, &req);
	return err;
}