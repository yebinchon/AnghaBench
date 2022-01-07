
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct reiserfs_journal {int j_work; } ;
typedef int myth ;


 int BUG_ON (int) ;
 int FLUSH_ALL ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int cancel_delayed_work_sync (int *) ;
 int do_journal_end (struct reiserfs_transaction_handle*,int ) ;
 int free_journal_ram (struct super_block*) ;
 int journal_join (struct reiserfs_transaction_handle*,struct super_block*) ;
 int journal_join_abort (struct reiserfs_transaction_handle*,struct super_block*) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,int ) ;
 int memset (struct reiserfs_transaction_handle*,int ,int) ;
 int reiserfs_cancel_old_flush (struct super_block*) ;
 scalar_t__ reiserfs_is_journal_aborted (struct reiserfs_journal*) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;
 int reiserfs_write_lock (struct super_block*) ;
 int reiserfs_write_unlock (struct super_block*) ;
 int sb_rdonly (struct super_block*) ;

__attribute__((used)) static int do_journal_release(struct reiserfs_transaction_handle *th,
         struct super_block *sb, int error)
{
 struct reiserfs_transaction_handle myth;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);





 if (!error && !sb_rdonly(sb)) {

  BUG_ON(!th->t_trans_id);
  do_journal_end(th, FLUSH_ALL);





  if (!journal_join(&myth, sb)) {
   reiserfs_prepare_for_journal(sb,
           SB_BUFFER_WITH_SB(sb),
           1);
   journal_mark_dirty(&myth, SB_BUFFER_WITH_SB(sb));
   do_journal_end(&myth, FLUSH_ALL);
  }
 }


 if (!error && reiserfs_is_journal_aborted(journal)) {
  memset(&myth, 0, sizeof(myth));
  if (!journal_join_abort(&myth, sb)) {
   reiserfs_prepare_for_journal(sb,
           SB_BUFFER_WITH_SB(sb),
           1);
   journal_mark_dirty(&myth, SB_BUFFER_WITH_SB(sb));
   do_journal_end(&myth, FLUSH_ALL);
  }
 }






 reiserfs_write_unlock(sb);






 reiserfs_cancel_old_flush(sb);

 cancel_delayed_work_sync(&SB_JOURNAL(sb)->j_work);

 free_journal_ram(sb);

 reiserfs_write_lock(sb);

 return 0;
}
