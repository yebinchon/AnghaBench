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
struct ubifs_inode {scalar_t__ ui_size; scalar_t__ synced_i_size; } ;
struct ubifs_info {int /*<<< orphan*/  size_tree; scalar_t__ ro_mount; int /*<<< orphan*/  vfs_sb; } ;
struct size_entry {scalar_t__ d_size; int /*<<< orphan*/  rb; struct inode* inode; scalar_t__ inum; } ;
struct inode {scalar_t__ i_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct size_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ubifs_inode* FUNC8 (struct inode*) ; 
 int FUNC9 (struct ubifs_info*,struct inode*) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, struct size_entry *e)
{
	struct inode *inode;
	struct ubifs_inode *ui;
	int err;

	if (c->ro_mount)
		FUNC6(c, !e->inode);

	if (e->inode) {
		/* Remounting rw, pick up inode we stored earlier */
		inode = e->inode;
	} else {
		inode = FUNC7(c->vfs_sb, e->inum);
		if (FUNC0(inode))
			return FUNC1(inode);

		if (inode->i_size >= e->d_size) {
			/*
			 * The original inode in the index already has a size
			 * big enough, nothing to do
			 */
			FUNC3(inode);
			return 0;
		}

		FUNC2("ino %lu size %lld -> %lld",
			  (unsigned long)e->inum,
			  inode->i_size, e->d_size);

		ui = FUNC8(inode);

		inode->i_size = e->d_size;
		ui->ui_size = e->d_size;
		ui->synced_i_size = e->d_size;

		e->inode = inode;
	}

	/*
	 * In readonly mode just keep the inode pinned in memory until we go
	 * readwrite. In readwrite mode write the inode to the journal with the
	 * fixed size.
	 */
	if (c->ro_mount)
		return 0;

	err = FUNC9(c, inode);

	FUNC3(inode);

	if (err)
		return err;

	FUNC5(&e->rb, &c->size_tree);
	FUNC4(e);

	return 0;
}