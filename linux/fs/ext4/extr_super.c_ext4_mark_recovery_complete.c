
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_super_block {int dummy; } ;
typedef int journal_t ;
struct TYPE_2__ {int * s_journal; } ;


 int BUG_ON (int ) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_clear_feature_journal_needs_recovery (struct super_block*) ;
 int ext4_commit_super (struct super_block*,int) ;
 int ext4_has_feature_journal (struct super_block*) ;
 scalar_t__ ext4_has_feature_journal_needs_recovery (struct super_block*) ;
 scalar_t__ jbd2_journal_flush (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

__attribute__((used)) static void ext4_mark_recovery_complete(struct super_block *sb,
     struct ext4_super_block *es)
{
 journal_t *journal = EXT4_SB(sb)->s_journal;

 if (!ext4_has_feature_journal(sb)) {
  BUG_ON(journal != ((void*)0));
  return;
 }
 jbd2_journal_lock_updates(journal);
 if (jbd2_journal_flush(journal) < 0)
  goto out;

 if (ext4_has_feature_journal_needs_recovery(sb) && sb_rdonly(sb)) {
  ext4_clear_feature_journal_needs_recovery(sb);
  ext4_commit_super(sb, 1);
 }

out:
 jbd2_journal_unlock_updates(journal);
}
