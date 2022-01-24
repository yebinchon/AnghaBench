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
struct super_block {int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_bdev; } ;
struct reiserfs_journal_desc {int /*<<< orphan*/ * j_realblock; } ;
struct reiserfs_journal_commit {int /*<<< orphan*/ * j_realblock; } ;
struct reiserfs_journal {unsigned long j_start; unsigned int j_last_flush_trans_id; unsigned int j_trans_id; } ;
struct buffer_head {unsigned int b_blocknr; int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 unsigned int FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_journal_commit*) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_journal_commit*) ; 
 unsigned long FUNC10 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC11 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC12 (struct reiserfs_journal_desc*) ; 
 scalar_t__ FUNC13 (struct super_block*,scalar_t__) ; 
 struct buffer_head* FUNC14 (struct super_block*,unsigned int) ; 
 scalar_t__ FUNC15 (struct super_block*,struct reiserfs_journal_desc*,struct reiserfs_journal_commit*) ; 
 struct buffer_head* FUNC16 (struct super_block*,unsigned int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head**) ; 
 struct buffer_head** FUNC19 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct super_block*,int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,char*,char*) ; 
 struct buffer_head* FUNC25 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC30(struct super_block *sb,
				    unsigned long cur_dblock,
				    unsigned long oldest_start,
				    unsigned int oldest_trans_id,
				    unsigned long newest_mount_id)
{
	struct reiserfs_journal *journal = FUNC1(sb);
	struct reiserfs_journal_desc *desc;
	struct reiserfs_journal_commit *commit;
	unsigned int trans_id = 0;
	struct buffer_head *c_bh;
	struct buffer_head *d_bh;
	struct buffer_head **log_blocks = NULL;
	struct buffer_head **real_blocks = NULL;
	unsigned int trans_offset;
	int i;
	int trans_half;

	d_bh = FUNC14(sb, cur_dblock);
	if (!d_bh)
		return 1;
	desc = (struct reiserfs_journal_desc *)d_bh->b_data;
	trans_offset = d_bh->b_blocknr - FUNC2(sb);
	FUNC23(sb, REISERFS_DEBUG_CODE, "journal-1037: "
		       "journal_read_transaction, offset %llu, len %d mount_id %d",
		       d_bh->b_blocknr - FUNC2(sb),
		       FUNC12(desc), FUNC10(desc));
	if (FUNC11(desc) < oldest_trans_id) {
		FUNC23(sb, REISERFS_DEBUG_CODE, "journal-1039: "
			       "journal_read_trans skipping because %lu is too old",
			       cur_dblock -
			       FUNC2(sb));
		FUNC5(d_bh);
		return 1;
	}
	if (FUNC10(desc) != newest_mount_id) {
		FUNC23(sb, REISERFS_DEBUG_CODE, "journal-1146: "
			       "journal_read_trans skipping because %d is != "
			       "newest_mount_id %lu", FUNC10(desc),
			       newest_mount_id);
		FUNC5(d_bh);
		return 1;
	}
	c_bh = FUNC14(sb, FUNC2(sb) +
			     ((trans_offset + FUNC12(desc) + 1) %
			      FUNC3(sb)));
	if (!c_bh) {
		FUNC5(d_bh);
		return 1;
	}
	commit = (struct reiserfs_journal_commit *)c_bh->b_data;
	if (FUNC15(sb, desc, commit)) {
		FUNC23(sb, REISERFS_DEBUG_CODE,
			       "journal_read_transaction, "
			       "commit offset %llu had bad time %d or length %d",
			       c_bh->b_blocknr -
			       FUNC2(sb),
			       FUNC8(commit),
			       FUNC9(commit));
		FUNC5(c_bh);
		FUNC5(d_bh);
		return 1;
	}

	if (FUNC4(sb->s_bdev)) {
		FUNC24(sb, "clm-2076",
				 "device is readonly, unable to replay log");
		FUNC5(c_bh);
		FUNC5(d_bh);
		return -EROFS;
	}

	trans_id = FUNC11(desc);
	/*
	 * now we know we've got a good transaction, and it was
	 * inside the valid time ranges
	 */
	log_blocks = FUNC19(FUNC12(desc),
				   sizeof(struct buffer_head *),
				   GFP_NOFS);
	real_blocks = FUNC19(FUNC12(desc),
				    sizeof(struct buffer_head *),
				    GFP_NOFS);
	if (!log_blocks || !real_blocks) {
		FUNC5(c_bh);
		FUNC5(d_bh);
		FUNC18(log_blocks);
		FUNC18(real_blocks);
		FUNC24(sb, "journal-1169",
				 "kmalloc failed, unable to mount FS");
		return -1;
	}
	/* get all the buffer heads */
	trans_half = FUNC17(sb->s_blocksize);
	for (i = 0; i < FUNC12(desc); i++) {
		log_blocks[i] =
		    FUNC16(sb,
				   FUNC2(sb) +
				   (trans_offset + 1 +
				    i) % FUNC3(sb));
		if (i < trans_half) {
			real_blocks[i] =
			    FUNC25(sb,
				      FUNC20(desc->j_realblock[i]));
		} else {
			real_blocks[i] =
			    FUNC25(sb,
				      FUNC20(commit->
						  j_realblock[i - trans_half]));
		}
		if (real_blocks[i]->b_blocknr > FUNC0(sb)) {
			FUNC24(sb, "journal-1207",
					 "REPLAY FAILURE fsck required! "
					 "Block to replay is outside of "
					 "filesystem");
			goto abort_replay;
		}
		/* make sure we don't try to replay onto log or reserved area */
		if (FUNC13
		    (sb, real_blocks[i]->b_blocknr)) {
			FUNC24(sb, "journal-1204",
					 "REPLAY FAILURE fsck required! "
					 "Trying to replay onto a log block");
abort_replay:
			FUNC6(log_blocks, i);
			FUNC6(real_blocks, i);
			FUNC5(c_bh);
			FUNC5(d_bh);
			FUNC18(log_blocks);
			FUNC18(real_blocks);
			return -1;
		}
	}
	/* read in the log blocks, memcpy to the corresponding real block */
	FUNC21(REQ_OP_READ, 0, FUNC12(desc), log_blocks);
	for (i = 0; i < FUNC12(desc); i++) {

		FUNC28(log_blocks[i]);
		if (!FUNC7(log_blocks[i])) {
			FUNC24(sb, "journal-1212",
					 "REPLAY FAILURE fsck required! "
					 "buffer write failed");
			FUNC6(log_blocks + i,
				     FUNC12(desc) - i);
			FUNC6(real_blocks, FUNC12(desc));
			FUNC5(c_bh);
			FUNC5(d_bh);
			FUNC18(log_blocks);
			FUNC18(real_blocks);
			return -1;
		}
		FUNC22(real_blocks[i]->b_data, log_blocks[i]->b_data,
		       real_blocks[i]->b_size);
		FUNC27(real_blocks[i]);
		FUNC5(log_blocks[i]);
	}
	/* flush out the real blocks */
	for (i = 0; i < FUNC12(desc); i++) {
		FUNC26(real_blocks[i]);
		FUNC29(real_blocks[i], 0);
	}
	for (i = 0; i < FUNC12(desc); i++) {
		FUNC28(real_blocks[i]);
		if (!FUNC7(real_blocks[i])) {
			FUNC24(sb, "journal-1226",
					 "REPLAY FAILURE, fsck required! "
					 "buffer write failed");
			FUNC6(real_blocks + i,
				     FUNC12(desc) - i);
			FUNC5(c_bh);
			FUNC5(d_bh);
			FUNC18(log_blocks);
			FUNC18(real_blocks);
			return -1;
		}
		FUNC5(real_blocks[i]);
	}
	cur_dblock =
	    FUNC2(sb) +
	    ((trans_offset + FUNC12(desc) +
	      2) % FUNC3(sb));
	FUNC23(sb, REISERFS_DEBUG_CODE,
		       "journal-1095: setting journal " "start to offset %ld",
		       cur_dblock - FUNC2(sb));

	/*
	 * init starting values for the first transaction, in case
	 * this is the last transaction to be replayed.
	 */
	journal->j_start = cur_dblock - FUNC2(sb);
	journal->j_last_flush_trans_id = trans_id;
	journal->j_trans_id = trans_id + 1;
	/* check for trans_id overflow */
	if (journal->j_trans_id == 0)
		journal->j_trans_id = 10;
	FUNC5(c_bh);
	FUNC5(d_bh);
	FUNC18(log_blocks);
	FUNC18(real_blocks);
	return 0;
}