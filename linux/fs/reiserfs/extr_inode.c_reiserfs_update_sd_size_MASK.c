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
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int IO_ERROR ; 
 int ITEM_NOT_FOUND ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SD_OFFSET ; 
 int /*<<< orphan*/  TYPE_STAT_DATA ; 
 int /*<<< orphan*/  FUNC4 (struct item_head*,struct item_head*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct item_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_transaction_handle*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpu_key*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct cpu_key*,int /*<<< orphan*/ *) ; 
 struct item_head* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 

void FUNC20(struct reiserfs_transaction_handle *th,
			     struct inode *inode, loff_t size)
{
	struct cpu_key key;
	FUNC1(path);
	struct buffer_head *bh;
	int fs_gen;
	struct item_head *ih, tmp_ih;
	int retval;

	FUNC0(!th->t_trans_id);

	/* key type is unimportant */
	FUNC10(&key, inode, SD_OFFSET, TYPE_STAT_DATA, 3);

	for (;;) {
		int pos;
		/* look for the object's stat data */
		retval = FUNC17(inode->i_sb, &key, &path);
		if (retval == IO_ERROR) {
			FUNC13(inode->i_sb, "vs-13050",
				       "i/o failure occurred trying to "
				       "update %K stat data", &key);
			return;
		}
		if (retval == ITEM_NOT_FOUND) {
			pos = FUNC3(&path);
			FUNC11(&path);
			if (inode->i_nlink == 0) {
				/*reiserfs_warning (inode->i_sb, "vs-13050: reiserfs_update_sd: i_nlink == 0, stat data not found"); */
				return;
			}
			FUNC16(inode->i_sb, "vs-13060",
					 "stat data of object %k (nlink == %d) "
					 "not found (pos %d)",
					 FUNC2(inode), inode->i_nlink,
					 pos);
			FUNC12(&path);
			return;
		}

		/*
		 * sigh, prepare_for_journal might schedule.  When it
		 * schedules the FS might change.  We have to detect that,
		 * and loop back to the search if the stat data item has moved
		 */
		bh = FUNC7(&path);
		ih = FUNC18(&path);
		FUNC4(&tmp_ih, ih);
		fs_gen = FUNC6(inode->i_sb);
		FUNC14(inode->i_sb, bh, 1);

		/* Stat_data item has been moved after scheduling. */
		if (FUNC5(fs_gen, inode->i_sb)
		    && FUNC8(&tmp_ih, &path)) {
			FUNC15(inode->i_sb, bh);
			continue;
		}
		break;
	}
	FUNC19(&path, inode, size);
	FUNC9(th, bh);
	FUNC11(&path);
	return;
}