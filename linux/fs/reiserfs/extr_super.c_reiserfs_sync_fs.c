
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;


 int dquot_writeback_dquots (struct super_block*,int) ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_end_sync (struct reiserfs_transaction_handle*) ;
 int reiserfs_flush_old_commits (struct super_block*) ;
 int reiserfs_write_lock (struct super_block*) ;
 int reiserfs_write_unlock (struct super_block*) ;

__attribute__((used)) static int reiserfs_sync_fs(struct super_block *s, int wait)
{
 struct reiserfs_transaction_handle th;





 dquot_writeback_dquots(s, -1);
 reiserfs_write_lock(s);
 if (!journal_begin(&th, s, 1))
  if (!journal_end_sync(&th))
   reiserfs_flush_old_commits(s);
 reiserfs_write_unlock(s);
 return 0;
}
