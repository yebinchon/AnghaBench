
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_journal_desc {int dummy; } ;
struct reiserfs_journal_commit {int dummy; } ;
struct TYPE_2__ {scalar_t__ j_trans_max; } ;


 TYPE_1__* SB_JOURNAL (struct super_block*) ;
 scalar_t__ get_commit_trans_id (struct reiserfs_journal_commit*) ;
 scalar_t__ get_commit_trans_len (struct reiserfs_journal_commit*) ;
 scalar_t__ get_desc_trans_id (struct reiserfs_journal_desc*) ;
 scalar_t__ get_desc_trans_len (struct reiserfs_journal_desc*) ;

__attribute__((used)) static int journal_compare_desc_commit(struct super_block *sb,
           struct reiserfs_journal_desc *desc,
           struct reiserfs_journal_commit *commit)
{
 if (get_commit_trans_id(commit) != get_desc_trans_id(desc) ||
     get_commit_trans_len(commit) != get_desc_trans_len(desc) ||
     get_commit_trans_len(commit) > SB_JOURNAL(sb)->j_trans_max ||
     get_commit_trans_len(commit) <= 0) {
  return 1;
 }
 return 0;
}
