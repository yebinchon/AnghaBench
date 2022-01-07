
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {scalar_t__ j_header_bh; int j_list_bitmap; struct reiserfs_journal* j_cnode_free_orig; int j_num_lists; int j_current_jl; } ;


 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int brelse (scalar_t__) ;
 int free_bitmap_nodes (struct super_block*) ;
 int free_list_bitmaps (struct super_block*,int ) ;
 int kfree (int ) ;
 int release_journal_dev (struct super_block*,struct reiserfs_journal*) ;
 int vfree (struct reiserfs_journal*) ;

__attribute__((used)) static void free_journal_ram(struct super_block *sb)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 kfree(journal->j_current_jl);
 journal->j_num_lists--;

 vfree(journal->j_cnode_free_orig);
 free_list_bitmaps(sb, journal->j_list_bitmap);
 free_bitmap_nodes(sb);
 if (journal->j_header_bh) {
  brelse(journal->j_header_bh);
 }




 release_journal_dev(sb, journal);
 vfree(journal);
}
