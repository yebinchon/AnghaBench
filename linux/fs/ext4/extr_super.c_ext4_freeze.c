
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int journal_t ;
struct TYPE_2__ {int * s_journal; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_clear_feature_journal_needs_recovery (struct super_block*) ;
 int ext4_commit_super (struct super_block*,int) ;
 int jbd2_journal_flush (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

__attribute__((used)) static int ext4_freeze(struct super_block *sb)
{
 int error = 0;
 journal_t *journal;

 if (sb_rdonly(sb))
  return 0;

 journal = EXT4_SB(sb)->s_journal;

 if (journal) {

  jbd2_journal_lock_updates(journal);





  error = jbd2_journal_flush(journal);
  if (error < 0)
   goto out;


  ext4_clear_feature_journal_needs_recovery(sb);
 }

 error = ext4_commit_super(sb, 1);
out:
 if (journal)

  jbd2_journal_unlock_updates(journal);
 return error;
}
