#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct reiserfs_journal_header {void* j_mount_id; void* j_first_unflushed_offset; void* j_last_flush_trans_id; } ;
struct reiserfs_journal {unsigned int j_last_flush_trans_id; unsigned long j_first_unflushed_offset; unsigned long j_mount_id; TYPE_1__* j_header_bh; } ;
struct TYPE_7__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int REQ_FUA ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 struct reiserfs_journal* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (struct reiserfs_journal*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int) ; 
 int FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct super_block *sb,
					unsigned long offset,
					unsigned int trans_id)
{
	struct reiserfs_journal_header *jh;
	struct reiserfs_journal *journal = FUNC0(sb);
	int depth;

	if (FUNC7(journal))
		return -EIO;

	if (trans_id >= journal->j_last_flush_trans_id) {
		if (FUNC3((journal->j_header_bh))) {
			depth = FUNC10(sb);
			FUNC2(journal->j_header_bh);
			FUNC9(sb, depth);
			if (FUNC13(!FUNC4(journal->j_header_bh))) {
#ifdef CONFIG_REISERFS_CHECK
				reiserfs_warning(sb, "journal-699",
						 "buffer write failed");
#endif
				return -EIO;
			}
		}
		journal->j_last_flush_trans_id = trans_id;
		journal->j_first_unflushed_offset = offset;
		jh = (struct reiserfs_journal_header *)(journal->j_header_bh->
							b_data);
		jh->j_last_flush_trans_id = FUNC5(trans_id);
		jh->j_first_unflushed_offset = FUNC5(offset);
		jh->j_mount_id = FUNC5(journal->j_mount_id);

		FUNC11(journal->j_header_bh);
		depth = FUNC10(sb);

		if (FUNC6(sb))
			FUNC1(journal->j_header_bh,
					REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
		else
			FUNC12(journal->j_header_bh);

		FUNC9(sb, depth);
		if (!FUNC4(journal->j_header_bh)) {
			FUNC8(sb, "journal-837",
					 "IO error during journal replay");
			return -EIO;
		}
	}
	return 0;
}