
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_list_bitmap {struct reiserfs_journal_list* journal_list; } ;
struct reiserfs_journal_list {int dummy; } ;
struct reiserfs_journal {int j_list_bitmap_index; struct reiserfs_list_bitmap* j_list_bitmap; } ;


 int JOURNAL_NUM_BITMAPS ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int flush_commit_list (struct super_block*,struct reiserfs_journal_list*,int) ;

__attribute__((used)) static struct reiserfs_list_bitmap *get_list_bitmap(struct super_block *sb,
          struct reiserfs_journal_list
          *jl)
{
 int i, j;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 struct reiserfs_list_bitmap *jb = ((void*)0);

 for (j = 0; j < (JOURNAL_NUM_BITMAPS * 3); j++) {
  i = journal->j_list_bitmap_index;
  journal->j_list_bitmap_index = (i + 1) % JOURNAL_NUM_BITMAPS;
  jb = journal->j_list_bitmap + i;
  if (journal->j_list_bitmap[i].journal_list) {
   flush_commit_list(sb,
       journal->j_list_bitmap[i].
       journal_list, 1);
   if (!journal->j_list_bitmap[i].journal_list) {
    break;
   }
  } else {
   break;
  }
 }

 if (jb->journal_list)
  return ((void*)0);
 jb->journal_list = jl;
 return jb;
}
