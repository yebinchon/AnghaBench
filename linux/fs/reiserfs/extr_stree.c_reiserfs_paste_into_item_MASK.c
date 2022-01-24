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
struct treepath {int dummy; } ;
struct tree_balance {int /*<<< orphan*/  key; } ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_super; int /*<<< orphan*/  t_trans_id; } ;
struct inode {int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
struct cpu_key {int /*<<< orphan*/  on_disk_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CARRY_ON ; 
 int EEXIST ; 
 int EIO ; 
 int ENOSPC ; 
 int IO_ERROR ; 
 int /*<<< orphan*/  M_PASTE ; 
 int NO_DISK_SPACE ; 
 int POSITION_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 int REPEAT_SEARCH ; 
 int /*<<< orphan*/  FUNC2 (struct treepath*,struct cpu_key const*) ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct tree_balance*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (int,struct super_block*) ; 
 int FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_transaction_handle*,struct tree_balance*,int /*<<< orphan*/ ,struct treepath*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  paste_into_item_restarted ; 
 int /*<<< orphan*/  FUNC11 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,char*,char*,struct cpu_key const*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int) ; 
 int FUNC15 (struct super_block*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct cpu_key const*,struct treepath*) ; 
 int /*<<< orphan*/  FUNC17 (struct tree_balance*) ; 

int FUNC18(struct reiserfs_transaction_handle *th,
			     /* Path to the pasted item. */
			     struct treepath *search_path,
			     /* Key to search for the needed item. */
			     const struct cpu_key *key,
			     /* Inode item belongs to */
			     struct inode *inode,
			     /* Pointer to the bytes to paste. */
			     const char *body,
			     /* Size of pasted bytes. */
			     int pasted_size)
{
	struct super_block *sb = inode->i_sb;
	struct tree_balance s_paste_balance;
	int retval;
	int fs_gen;
	int depth;

	FUNC0(!th->t_trans_id);

	fs_gen = FUNC8(inode->i_sb);

#ifdef REISERQUOTA_DEBUG
	reiserfs_debug(inode->i_sb, REISERFS_DEBUG_CODE,
		       "reiserquota paste_into_item(): allocating %u id=%u type=%c",
		       pasted_size, inode->i_uid,
		       key2type(&key->on_disk_key));
#endif

	depth = FUNC15(sb);
	retval = FUNC4(inode, pasted_size);
	FUNC14(sb, depth);
	if (retval) {
		FUNC11(search_path);
		return retval;
	}
	FUNC9(th, &s_paste_balance, th->t_super, search_path,
		       pasted_size);
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	s_paste_balance.key = key->on_disk_key;
#endif

	/* DQUOT_* can schedule, must check before the fix_nodes */
	if (FUNC7(fs_gen, inode->i_sb)) {
		goto search_again;
	}

	while ((retval =
		FUNC6(M_PASTE, &s_paste_balance, NULL,
			  body)) == REPEAT_SEARCH) {
search_again:
		/* file system changed while we were in the fix_nodes */
		FUNC1(th->t_super, paste_into_item_restarted);
		retval =
		    FUNC16(th->t_super, key,
					       search_path);
		if (retval == IO_ERROR) {
			retval = -EIO;
			goto error_out;
		}
		if (retval == POSITION_FOUND) {
			FUNC13(inode->i_sb, "PAP-5710",
					 "entry or pasted byte (%K) exists",
					 key);
			retval = -EEXIST;
			goto error_out;
		}
#ifdef CONFIG_REISERFS_CHECK
		check_research_for_paste(search_path, key);
#endif
	}

	/*
	 * Perform balancing after all resources are collected by fix_nodes,
	 * and accessing them will not risk triggering schedule.
	 */
	if (retval == CARRY_ON) {
		FUNC3(&s_paste_balance, NULL /*ih */ , body, M_PASTE);
		return 0;
	}
	retval = (retval == NO_DISK_SPACE) ? -ENOSPC : -EIO;
error_out:
	/* this also releases the path */
	FUNC17(&s_paste_balance);
#ifdef REISERQUOTA_DEBUG
	reiserfs_debug(inode->i_sb, REISERFS_DEBUG_CODE,
		       "reiserquota paste_into_item(): freeing %u id=%u type=%c",
		       pasted_size, inode->i_uid,
		       key2type(&key->on_disk_key));
#endif
	depth = FUNC15(sb);
	FUNC5(inode, pasted_size);
	FUNC14(sb, depth);
	return retval;
}