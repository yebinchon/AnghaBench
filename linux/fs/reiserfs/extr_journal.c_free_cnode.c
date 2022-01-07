
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* prev; struct reiserfs_journal_cnode* next; } ;
struct reiserfs_journal {struct reiserfs_journal_cnode* j_cnode_free_list; int j_cnode_free; int j_cnode_used; } ;


 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int reiserfs_check_lock_depth (struct super_block*,char*) ;

__attribute__((used)) static void free_cnode(struct super_block *sb,
         struct reiserfs_journal_cnode *cn)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);

 reiserfs_check_lock_depth(sb, "free_cnode");

 journal->j_cnode_used--;
 journal->j_cnode_free++;

 cn->next = journal->j_cnode_free_list;
 if (journal->j_cnode_free_list) {
  journal->j_cnode_free_list->prev = cn;
 }
 cn->prev = ((void*)0);
 journal->j_cnode_free_list = cn;
}
