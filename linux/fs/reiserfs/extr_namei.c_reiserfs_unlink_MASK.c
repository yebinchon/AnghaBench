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
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_dir_entry {scalar_t__ de_objectid; scalar_t__ de_entrylen; int /*<<< orphan*/  de_entry_key; int /*<<< orphan*/ * de_gen_number_bit_string; } ;
struct inode {scalar_t__ i_ino; unsigned long i_nlink; int /*<<< orphan*/  i_sb; void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ DEH_SIZE ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IO_ERROR ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int NAME_NOT_FOUND ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry)
{
	int retval, err;
	struct inode *inode;
	struct reiserfs_dir_entry de;
	FUNC0(path);
	struct reiserfs_transaction_handle th;
	int jbegin_count;
	unsigned long savelink;

	retval = FUNC5(dir);
	if (retval)
		return retval;

	inode = FUNC4(dentry);

	/*
	 * in this transaction we can be doing at max two balancings and
	 * update two stat datas, we change quotas of the owner of the
	 * directory and of the owner of the parent directory. The quota
	 * structure is possibly deleted only on iput => outside of
	 * this transaction
	 */
	jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 2 + 2 +
	    4 * FUNC1(dir->i_sb);

	FUNC17(dir->i_sb);
	retval = FUNC8(&th, dir->i_sb, jbegin_count);
	if (retval)
		goto out_unlink;

	de.de_gen_number_bit_string = NULL;
	if ((retval =
	     FUNC13(dir, dentry->d_name.name, dentry->d_name.len,
				 &path, &de)) == NAME_NOT_FOUND) {
		retval = -ENOENT;
		goto end_unlink;
	} else if (retval == IO_ERROR) {
		retval = -EIO;
		goto end_unlink;
	}

	FUNC14(inode);
	FUNC14(dir);

	if (de.de_objectid != inode->i_ino) {
		/*
		 * FIXME: compare key of an object and a key found in the entry
		 */
		retval = -EIO;
		goto end_unlink;
	}

	if (!inode->i_nlink) {
		FUNC16(inode->i_sb, "reiserfs-7042",
				 "deleting nonexistent file (%lu), %d",
				 inode->i_ino, inode->i_nlink);
		FUNC19(inode, 1);
	}

	FUNC6(inode);

	/*
	 * we schedule before doing the add_save_link call, save the link
	 * count so we don't race
	 */
	savelink = inode->i_nlink;

	retval =
	    FUNC12(&th, &path, &de.de_entry_key, dir, NULL,
				   0);
	if (retval < 0) {
		FUNC7(inode);
		goto end_unlink;
	}
	inode->i_ctime = FUNC3(inode);
	FUNC15(&th, inode);

	dir->i_size -= (de.de_entrylen + DEH_SIZE);
	dir->i_ctime = dir->i_mtime = FUNC3(dir);
	FUNC15(&th, dir);

	if (!savelink)
		/* prevent file from getting lost */
		FUNC2(&th, inode, 0 /* not truncate */ );

	retval = FUNC9(&th);
	FUNC11(&path);
	FUNC18(dir->i_sb);
	return retval;

end_unlink:
	FUNC10(&path);
	err = FUNC9(&th);
	FUNC11(&path);
	if (err)
		retval = err;
out_unlink:
	FUNC18(dir->i_sb);
	return retval;
}