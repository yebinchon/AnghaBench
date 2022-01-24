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
typedef  scalar_t__ time64_t ;
struct super_block {int /*<<< orphan*/  s_bdev; int /*<<< orphan*/  s_blocksize; } ;
struct reiserfs_journal_header {int /*<<< orphan*/  j_mount_id; int /*<<< orphan*/  j_last_flush_trans_id; int /*<<< orphan*/  j_first_unflushed_offset; } ;
struct reiserfs_journal_desc {int dummy; } ;
struct reiserfs_journal {unsigned long j_start; int j_trans_id; int j_last_flush_trans_id; int j_mount_id; int j_first_unflushed_offset; int /*<<< orphan*/  j_dev_bd; TYPE_1__* j_header_bh; } ;
struct buffer_head {unsigned long b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct super_block*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 unsigned long FUNC6 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC7 (struct reiserfs_journal_desc*) ; 
 scalar_t__ FUNC8 (struct reiserfs_journal_desc*) ; 
 void* FUNC9 (struct super_block*,int) ; 
 int FUNC10 (struct super_block*,unsigned long,unsigned long,unsigned int,unsigned long) ; 
 int FUNC11 (struct super_block*,struct buffer_head*,unsigned int*,unsigned long*) ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC14 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*) ; 

__attribute__((used)) static int FUNC19(struct super_block *sb)
{
	struct reiserfs_journal *journal = FUNC0(sb);
	struct reiserfs_journal_desc *desc;
	unsigned int oldest_trans_id = 0;
	unsigned int oldest_invalid_trans_id = 0;
	time64_t start;
	unsigned long oldest_start = 0;
	unsigned long cur_dblock = 0;
	unsigned long newest_mount_id = 9;
	struct buffer_head *d_bh;
	struct reiserfs_journal_header *jh;
	int valid_journal_header = 0;
	int replay_count = 0;
	int continue_replay = 1;
	int ret;

	cur_dblock = FUNC1(sb);
	FUNC16(sb, "checking transaction log (%pg)\n",
		      journal->j_dev_bd);
	start = FUNC12();

	/*
	 * step 1, read in the journal header block.  Check the transaction
	 * it says is the first unflushed, and if that transaction is not
	 * valid, replay is done
	 */
	journal->j_header_bh = FUNC9(sb,
					     FUNC1(sb)
					     + FUNC2(sb));
	if (!journal->j_header_bh) {
		return 1;
	}
	jh = (struct reiserfs_journal_header *)(journal->j_header_bh->b_data);
	if (FUNC13(jh->j_first_unflushed_offset) <
	    FUNC2(sb)
	    && FUNC13(jh->j_last_flush_trans_id) > 0) {
		oldest_start =
		    FUNC1(sb) +
		    FUNC13(jh->j_first_unflushed_offset);
		oldest_trans_id = FUNC13(jh->j_last_flush_trans_id) + 1;
		newest_mount_id = FUNC13(jh->j_mount_id);
		FUNC15(sb, REISERFS_DEBUG_CODE,
			       "journal-1153: found in "
			       "header: first_unflushed_offset %d, last_flushed_trans_id "
			       "%lu", FUNC13(jh->j_first_unflushed_offset),
			       FUNC13(jh->j_last_flush_trans_id));
		valid_journal_header = 1;

		/*
		 * now, we try to read the first unflushed offset.  If it
		 * is not valid, there is nothing more we can do, and it
		 * makes no sense to read through the whole log.
		 */
		d_bh =
		    FUNC9(sb,
				  FUNC1(sb) +
				  FUNC13(jh->j_first_unflushed_offset));
		ret = FUNC11(sb, d_bh, NULL, NULL);
		if (!ret) {
			continue_replay = 0;
		}
		FUNC5(d_bh);
		goto start_log_replay;
	}

	/*
	 * ok, there are transactions that need to be replayed.  start
	 * with the first log block, find all the valid transactions, and
	 * pick out the oldest.
	 */
	while (continue_replay
	       && cur_dblock <
	       (FUNC1(sb) +
		FUNC2(sb))) {
		/*
		 * Note that it is required for blocksize of primary fs
		 * device and journal device to be the same
		 */
		d_bh =
		    FUNC14(journal->j_dev_bd, cur_dblock,
				    sb->s_blocksize,
				    FUNC1(sb) +
				    FUNC2(sb));
		ret =
		    FUNC11(sb, d_bh,
						 &oldest_invalid_trans_id,
						 &newest_mount_id);
		if (ret == 1) {
			desc = (struct reiserfs_journal_desc *)d_bh->b_data;
			if (oldest_start == 0) {	/* init all oldest_ values */
				oldest_trans_id = FUNC7(desc);
				oldest_start = d_bh->b_blocknr;
				newest_mount_id = FUNC6(desc);
				FUNC15(sb, REISERFS_DEBUG_CODE,
					       "journal-1179: Setting "
					       "oldest_start to offset %llu, trans_id %lu",
					       oldest_start -
					       FUNC1
					       (sb), oldest_trans_id);
			} else if (oldest_trans_id > FUNC7(desc)) {
				/* one we just read was older */
				oldest_trans_id = FUNC7(desc);
				oldest_start = d_bh->b_blocknr;
				FUNC15(sb, REISERFS_DEBUG_CODE,
					       "journal-1180: Resetting "
					       "oldest_start to offset %lu, trans_id %lu",
					       oldest_start -
					       FUNC1
					       (sb), oldest_trans_id);
			}
			if (newest_mount_id < FUNC6(desc)) {
				newest_mount_id = FUNC6(desc);
				FUNC15(sb, REISERFS_DEBUG_CODE,
					       "journal-1299: Setting "
					       "newest_mount_id to %d",
					       FUNC6(desc));
			}
			cur_dblock += FUNC8(desc) + 2;
		} else {
			cur_dblock++;
		}
		FUNC5(d_bh);
	}

start_log_replay:
	cur_dblock = oldest_start;
	if (oldest_trans_id) {
		FUNC15(sb, REISERFS_DEBUG_CODE,
			       "journal-1206: Starting replay "
			       "from offset %llu, trans_id %lu",
			       cur_dblock - FUNC1(sb),
			       oldest_trans_id);

	}
	replay_count = 0;
	while (continue_replay && oldest_trans_id > 0) {
		ret =
		    FUNC10(sb, cur_dblock, oldest_start,
					     oldest_trans_id, newest_mount_id);
		if (ret < 0) {
			return ret;
		} else if (ret != 0) {
			break;
		}
		cur_dblock =
		    FUNC1(sb) + journal->j_start;
		replay_count++;
		if (cur_dblock == oldest_start)
			break;
	}

	if (oldest_trans_id == 0) {
		FUNC15(sb, REISERFS_DEBUG_CODE,
			       "journal-1225: No valid " "transactions found");
	}
	/*
	 * j_start does not get set correctly if we don't replay any
	 * transactions.  if we had a valid journal_header, set j_start
	 * to the first unflushed transaction value, copy the trans_id
	 * from the header
	 */
	if (valid_journal_header && replay_count == 0) {
		journal->j_start = FUNC13(jh->j_first_unflushed_offset);
		journal->j_trans_id =
		    FUNC13(jh->j_last_flush_trans_id) + 1;
		/* check for trans_id overflow */
		if (journal->j_trans_id == 0)
			journal->j_trans_id = 10;
		journal->j_last_flush_trans_id =
		    FUNC13(jh->j_last_flush_trans_id);
		journal->j_mount_id = FUNC13(jh->j_mount_id) + 1;
	} else {
		journal->j_mount_id = newest_mount_id + 1;
	}
	FUNC15(sb, REISERFS_DEBUG_CODE, "journal-1299: Setting "
		       "newest_mount_id to %lu", journal->j_mount_id);
	journal->j_first_unflushed_offset = journal->j_start;
	if (replay_count > 0) {
		FUNC16(sb,
			      "replayed %d transactions in %lu seconds\n",
			      replay_count, FUNC12() - start);
	}
	/* needed to satisfy the locking in _update_journal_header_block */
	FUNC17(sb);
	if (!FUNC4(sb->s_bdev) &&
	    FUNC3(sb, journal->j_start,
					 journal->j_last_flush_trans_id)) {
		FUNC18(sb);
		/*
		 * replay failed, caller must call free_journal_ram and abort
		 * the mount
		 */
		return -1;
	}
	FUNC18(sb);
	return 0;
}