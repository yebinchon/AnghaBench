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
struct ubifs_inode {scalar_t__ ui_size; scalar_t__ synced_i_size; int /*<<< orphan*/  ui_mutex; int /*<<< orphan*/  ui_lock; int /*<<< orphan*/  dirty; } ;
struct ubifs_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info const*,char*,scalar_t__,scalar_t__,...) ; 
 struct ubifs_inode* FUNC9 (struct inode*) ; 

int FUNC10(const struct ubifs_info *c, struct inode *inode)
{
	int err = 0;
	struct ubifs_inode *ui = FUNC9(inode);

	if (!FUNC1(c))
		return 0;
	if (!FUNC0(inode->i_mode))
		return 0;

	FUNC4(&ui->ui_mutex);
	FUNC6(&ui->ui_lock);
	if (ui->ui_size != ui->synced_i_size && !ui->dirty) {
		FUNC8(c, "ui_size is %lld, synced_i_size is %lld, but inode is clean",
			  ui->ui_size, ui->synced_i_size);
		FUNC8(c, "i_ino %lu, i_mode %#x, i_size %lld", inode->i_ino,
			  inode->i_mode, FUNC3(inode));
		FUNC2();
		err = -EINVAL;
	}
	FUNC7(&ui->ui_lock);
	FUNC5(&ui->ui_mutex);
	return err;
}