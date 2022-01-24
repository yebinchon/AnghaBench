#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct journal_params {int dummy; } ;
struct TYPE_4__ {struct journal_params s_journal; } ;
struct reiserfs_super_block {TYPE_1__ s_v1; } ;
struct reiserfs_sb_info {TYPE_2__* s_journal; struct reiserfs_super_block* s_rs; } ;
struct TYPE_6__ {int /*<<< orphan*/  j_max_commit_age; int /*<<< orphan*/  j_dev_bd; } ;
struct TYPE_5__ {int /*<<< orphan*/  j_wcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct reiserfs_sb_info* FUNC2 (struct super_block*) ; 
 TYPE_3__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  in_journal ; 
 int /*<<< orphan*/  in_journal_bitmap ; 
 int /*<<< orphan*/  in_journal_reusable ; 
 int /*<<< orphan*/  j_1st_reserved_block ; 
 int /*<<< orphan*/  j_bcount ; 
 int /*<<< orphan*/  j_cnode_free ; 
 int /*<<< orphan*/  j_cnode_used ; 
 int /*<<< orphan*/  j_first_unflushed_offset ; 
 int /*<<< orphan*/  j_last_flush_trans_id ; 
 int /*<<< orphan*/  j_len ; 
 int /*<<< orphan*/  j_len_alloc ; 
 int /*<<< orphan*/  j_list_bitmap_index ; 
 int /*<<< orphan*/  j_mount_id ; 
 int /*<<< orphan*/  j_must_wait ; 
 int /*<<< orphan*/  j_next_async_flush ; 
 int /*<<< orphan*/  j_next_full_flush ; 
 int /*<<< orphan*/  j_start ; 
 int /*<<< orphan*/  j_state ; 
 int /*<<< orphan*/  j_trans_id ; 
 int /*<<< orphan*/  j_trans_start_time ; 
 int /*<<< orphan*/  journal_being ; 
 int /*<<< orphan*/  journal_relock_wcount ; 
 int /*<<< orphan*/  journal_relock_writers ; 
 int /*<<< orphan*/  jp_journal_1st_block ; 
 int /*<<< orphan*/  jp_journal_dev ; 
 int /*<<< orphan*/  jp_journal_magic ; 
 int /*<<< orphan*/  jp_journal_max_batch ; 
 int /*<<< orphan*/  jp_journal_max_trans_age ; 
 int /*<<< orphan*/  jp_journal_size ; 
 int /*<<< orphan*/  jp_journal_trans_max ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lock_journal ; 
 int /*<<< orphan*/  lock_journal_wait ; 
 int /*<<< orphan*/  mark_dirty ; 
 int /*<<< orphan*/  mark_dirty_already ; 
 int /*<<< orphan*/  mark_dirty_notjournal ; 
 int /*<<< orphan*/  prepare ; 
 int /*<<< orphan*/  prepare_retry ; 
 int /*<<< orphan*/  restore_prepared ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, void *unused)
{
	struct super_block *sb = m->private;
	struct reiserfs_sb_info *r = FUNC2(sb);
	struct reiserfs_super_block *rs = r->s_rs;
	struct journal_params *jp = &rs->s_v1.s_journal;

	FUNC7(m,		/* on-disk fields */
		   "jp_journal_1st_block: \t%i\n"
		   "jp_journal_dev: \t%pg[%x]\n"
		   "jp_journal_size: \t%i\n"
		   "jp_journal_trans_max: \t%i\n"
		   "jp_journal_magic: \t%i\n"
		   "jp_journal_max_batch: \t%i\n"
		   "jp_journal_max_commit_age: \t%i\n"
		   "jp_journal_max_trans_age: \t%i\n"
		   /* incore fields */
		   "j_1st_reserved_block: \t%i\n"
		   "j_state: \t%li\n"
		   "j_trans_id: \t%u\n"
		   "j_mount_id: \t%lu\n"
		   "j_start: \t%lu\n"
		   "j_len: \t%lu\n"
		   "j_len_alloc: \t%lu\n"
		   "j_wcount: \t%i\n"
		   "j_bcount: \t%lu\n"
		   "j_first_unflushed_offset: \t%lu\n"
		   "j_last_flush_trans_id: \t%u\n"
		   "j_trans_start_time: \t%lli\n"
		   "j_list_bitmap_index: \t%i\n"
		   "j_must_wait: \t%i\n"
		   "j_next_full_flush: \t%i\n"
		   "j_next_async_flush: \t%i\n"
		   "j_cnode_used: \t%i\n" "j_cnode_free: \t%i\n" "\n"
		   /* reiserfs_proc_info_data_t.journal fields */
		   "in_journal: \t%12lu\n"
		   "in_journal_bitmap: \t%12lu\n"
		   "in_journal_reusable: \t%12lu\n"
		   "lock_journal: \t%12lu\n"
		   "lock_journal_wait: \t%12lu\n"
		   "journal_begin: \t%12lu\n"
		   "journal_relock_writers: \t%12lu\n"
		   "journal_relock_wcount: \t%12lu\n"
		   "mark_dirty: \t%12lu\n"
		   "mark_dirty_already: \t%12lu\n"
		   "mark_dirty_notjournal: \t%12lu\n"
		   "restore_prepared: \t%12lu\n"
		   "prepare: \t%12lu\n"
		   "prepare_retry: \t%12lu\n",
		   FUNC0(jp_journal_1st_block),
		   FUNC3(sb)->j_dev_bd,
		   FUNC0(jp_journal_dev),
		   FUNC0(jp_journal_size),
		   FUNC0(jp_journal_trans_max),
		   FUNC0(jp_journal_magic),
		   FUNC0(jp_journal_max_batch),
		   FUNC3(sb)->j_max_commit_age,
		   FUNC0(jp_journal_max_trans_age),
		   FUNC1(j_1st_reserved_block),
		   FUNC1(j_state),
		   FUNC1(j_trans_id),
		   FUNC1(j_mount_id),
		   FUNC1(j_start),
		   FUNC1(j_len),
		   FUNC1(j_len_alloc),
		   FUNC5(&r->s_journal->j_wcount),
		   FUNC1(j_bcount),
		   FUNC1(j_first_unflushed_offset),
		   FUNC1(j_last_flush_trans_id),
		   FUNC6(FUNC1(j_trans_start_time)),
		   FUNC1(j_list_bitmap_index),
		   FUNC1(j_must_wait),
		   FUNC1(j_next_full_flush),
		   FUNC1(j_next_async_flush),
		   FUNC1(j_cnode_used),
		   FUNC1(j_cnode_free),
		   FUNC4(in_journal),
		   FUNC4(in_journal_bitmap),
		   FUNC4(in_journal_reusable),
		   FUNC4(lock_journal),
		   FUNC4(lock_journal_wait),
		   FUNC4(journal_being),
		   FUNC4(journal_relock_writers),
		   FUNC4(journal_relock_wcount),
		   FUNC4(mark_dirty),
		   FUNC4(mark_dirty_already),
		   FUNC4(mark_dirty_notjournal),
		   FUNC4(restore_prepared), FUNC4(prepare), FUNC4(prepare_retry)
	    );
	return 0;
}