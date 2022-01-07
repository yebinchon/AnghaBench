
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct journal_params {int dummy; } ;
struct TYPE_4__ {struct journal_params s_journal; } ;
struct reiserfs_super_block {TYPE_1__ s_v1; } ;
struct reiserfs_sb_info {TYPE_2__* s_journal; struct reiserfs_super_block* s_rs; } ;
struct TYPE_6__ {int j_max_commit_age; int j_dev_bd; } ;
struct TYPE_5__ {int j_wcount; } ;


 int DJP (int ) ;
 int JF (int ) ;
 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 TYPE_3__* SB_JOURNAL (struct super_block*) ;
 int SFPJ (int ) ;
 int atomic_read (int *) ;
 int in_journal ;
 int in_journal_bitmap ;
 int in_journal_reusable ;
 int j_1st_reserved_block ;
 int j_bcount ;
 int j_cnode_free ;
 int j_cnode_used ;
 int j_first_unflushed_offset ;
 int j_last_flush_trans_id ;
 int j_len ;
 int j_len_alloc ;
 int j_list_bitmap_index ;
 int j_mount_id ;
 int j_must_wait ;
 int j_next_async_flush ;
 int j_next_full_flush ;
 int j_start ;
 int j_state ;
 int j_trans_id ;
 int j_trans_start_time ;
 int journal_being ;
 int journal_relock_wcount ;
 int journal_relock_writers ;
 int jp_journal_1st_block ;
 int jp_journal_dev ;
 int jp_journal_magic ;
 int jp_journal_max_batch ;
 int jp_journal_max_trans_age ;
 int jp_journal_size ;
 int jp_journal_trans_max ;
 int ktime_mono_to_real_seconds (int ) ;
 int lock_journal ;
 int lock_journal_wait ;
 int mark_dirty ;
 int mark_dirty_already ;
 int mark_dirty_notjournal ;
 int prepare ;
 int prepare_retry ;
 int restore_prepared ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int show_journal(struct seq_file *m, void *unused)
{
 struct super_block *sb = m->private;
 struct reiserfs_sb_info *r = REISERFS_SB(sb);
 struct reiserfs_super_block *rs = r->s_rs;
 struct journal_params *jp = &rs->s_v1.s_journal;

 seq_printf(m,
     "jp_journal_1st_block: \t%i\n"
     "jp_journal_dev: \t%pg[%x]\n"
     "jp_journal_size: \t%i\n"
     "jp_journal_trans_max: \t%i\n"
     "jp_journal_magic: \t%i\n"
     "jp_journal_max_batch: \t%i\n"
     "jp_journal_max_commit_age: \t%i\n"
     "jp_journal_max_trans_age: \t%i\n"

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
     DJP(jp_journal_1st_block),
     SB_JOURNAL(sb)->j_dev_bd,
     DJP(jp_journal_dev),
     DJP(jp_journal_size),
     DJP(jp_journal_trans_max),
     DJP(jp_journal_magic),
     DJP(jp_journal_max_batch),
     SB_JOURNAL(sb)->j_max_commit_age,
     DJP(jp_journal_max_trans_age),
     JF(j_1st_reserved_block),
     JF(j_state),
     JF(j_trans_id),
     JF(j_mount_id),
     JF(j_start),
     JF(j_len),
     JF(j_len_alloc),
     atomic_read(&r->s_journal->j_wcount),
     JF(j_bcount),
     JF(j_first_unflushed_offset),
     JF(j_last_flush_trans_id),
     ktime_mono_to_real_seconds(JF(j_trans_start_time)),
     JF(j_list_bitmap_index),
     JF(j_must_wait),
     JF(j_next_full_flush),
     JF(j_next_async_flush),
     JF(j_cnode_used),
     JF(j_cnode_free),
     SFPJ(in_journal),
     SFPJ(in_journal_bitmap),
     SFPJ(in_journal_reusable),
     SFPJ(lock_journal),
     SFPJ(lock_journal_wait),
     SFPJ(journal_being),
     SFPJ(journal_relock_writers),
     SFPJ(journal_relock_wcount),
     SFPJ(mark_dirty),
     SFPJ(mark_dirty_already),
     SFPJ(mark_dirty_notjournal),
     SFPJ(restore_prepared), SFPJ(prepare), SFPJ(prepare_retry)
     );
 return 0;
}
