
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_journal_list {int j_commit_left; } ;
struct reiserfs_journal {unsigned long j_trans_id; int j_errno; struct reiserfs_journal_list* j_current_jl; } ;
struct inode {struct super_block* i_sb; } ;


 int SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int atomic_read (int *) ;
 int flush_commit_list (struct super_block*,struct reiserfs_journal_list*,int) ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int journal_end_sync (struct reiserfs_transaction_handle*) ;
 scalar_t__ journal_list_still_alive (struct super_block*,unsigned long) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,int ) ;
 int let_transaction_grow (struct super_block*,unsigned long) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;

__attribute__((used)) static int __commit_trans_jl(struct inode *inode, unsigned long id,
        struct reiserfs_journal_list *jl)
{
 struct reiserfs_transaction_handle th;
 struct super_block *sb = inode->i_sb;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 int ret = 0;





 if (id == journal->j_trans_id) {
  jl = journal->j_current_jl;




  let_transaction_grow(sb, id);
  if (journal->j_trans_id != id) {
   goto flush_commit_only;
  }

  ret = journal_begin(&th, sb, 1);
  if (ret)
   return ret;


  if (journal->j_trans_id != id) {
   reiserfs_prepare_for_journal(sb, SB_BUFFER_WITH_SB(sb),
           1);
   journal_mark_dirty(&th, SB_BUFFER_WITH_SB(sb));
   ret = journal_end(&th);
   goto flush_commit_only;
  }

  ret = journal_end_sync(&th);
  if (!ret)
   ret = 1;

 } else {





flush_commit_only:
  if (journal_list_still_alive(inode->i_sb, id)) {





   if (atomic_read(&jl->j_commit_left) > 1)
    ret = 1;
   flush_commit_list(sb, jl, 1);
   if (journal->j_errno)
    ret = journal->j_errno;
  }
 }

 return ret;
}
