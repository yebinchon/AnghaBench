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
struct super_block {int dummy; } ;
struct reiserfs_journal_desc {int dummy; } ;
struct reiserfs_journal_commit {int dummy; } ;
struct buffer_head {unsigned long b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long j_trans_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOURNAL_DESC_MAGIC ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 unsigned long FUNC4 (struct reiserfs_journal_commit*) ; 
 unsigned int FUNC5 (struct reiserfs_journal_commit*) ; 
 unsigned long FUNC6 (struct reiserfs_journal_desc*) ; 
 unsigned int FUNC7 (struct reiserfs_journal_desc*) ; 
 unsigned long FUNC8 (struct reiserfs_journal_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 struct buffer_head* FUNC10 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC11 (struct super_block*,struct reiserfs_journal_desc*,struct reiserfs_journal_commit*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*,char*,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb,
					struct buffer_head *d_bh,
					unsigned int *oldest_invalid_trans_id,
					unsigned long *newest_mount_id)
{
	struct reiserfs_journal_desc *desc;
	struct reiserfs_journal_commit *commit;
	struct buffer_head *c_bh;
	unsigned long offset;

	if (!d_bh)
		return 0;

	desc = (struct reiserfs_journal_desc *)d_bh->b_data;
	if (FUNC8(desc) > 0
	    && !FUNC12(FUNC9(d_bh), JOURNAL_DESC_MAGIC, 8)) {
		if (oldest_invalid_trans_id && *oldest_invalid_trans_id
		    && FUNC7(desc) > *oldest_invalid_trans_id) {
			FUNC13(sb, REISERFS_DEBUG_CODE,
				       "journal-986: transaction "
				       "is valid returning because trans_id %d is greater than "
				       "oldest_invalid %lu",
				       FUNC7(desc),
				       *oldest_invalid_trans_id);
			return 0;
		}
		if (newest_mount_id
		    && *newest_mount_id > FUNC6(desc)) {
			FUNC13(sb, REISERFS_DEBUG_CODE,
				       "journal-1087: transaction "
				       "is valid returning because mount_id %d is less than "
				       "newest_mount_id %lu",
				       FUNC6(desc),
				       *newest_mount_id);
			return -1;
		}
		if (FUNC8(desc) > FUNC0(sb)->j_trans_max) {
			FUNC14(sb, "journal-2018",
					 "Bad transaction length %d "
					 "encountered, ignoring transaction",
					 FUNC8(desc));
			return -1;
		}
		offset = d_bh->b_blocknr - FUNC1(sb);

		/*
		 * ok, we have a journal description block,
		 * let's see if the transaction was valid
		 */
		c_bh =
		    FUNC10(sb,
				  FUNC1(sb) +
				  ((offset + FUNC8(desc) +
				    1) % FUNC2(sb)));
		if (!c_bh)
			return 0;
		commit = (struct reiserfs_journal_commit *)c_bh->b_data;
		if (FUNC11(sb, desc, commit)) {
			FUNC13(sb, REISERFS_DEBUG_CODE,
				       "journal_transaction_is_valid, commit offset %ld had bad "
				       "time %d or length %d",
				       c_bh->b_blocknr -
				       FUNC1(sb),
				       FUNC4(commit),
				       FUNC5(commit));
			FUNC3(c_bh);
			if (oldest_invalid_trans_id) {
				*oldest_invalid_trans_id =
				    FUNC7(desc);
				FUNC13(sb, REISERFS_DEBUG_CODE,
					       "journal-1004: "
					       "transaction_is_valid setting oldest invalid trans_id "
					       "to %d",
					       FUNC7(desc));
			}
			return -1;
		}
		FUNC3(c_bh);
		FUNC13(sb, REISERFS_DEBUG_CODE,
			       "journal-1006: found valid "
			       "transaction start offset %llu, len %d id %d",
			       d_bh->b_blocknr -
			       FUNC1(sb),
			       FUNC8(desc),
			       FUNC7(desc));
		return 1;
	} else {
		return 0;
	}
}