
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {struct reiserfs_journal_cnode* j_realblock; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* next; scalar_t__ state; scalar_t__ bh; } ;
struct reiserfs_journal {int j_list_hash_table; } ;


 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int free_cnode (struct super_block*,struct reiserfs_journal_cnode*) ;
 int reiserfs_warning (struct super_block*,char*,char*,scalar_t__,int,scalar_t__) ;
 int remove_journal_hash (struct super_block*,int ,struct reiserfs_journal_list*,scalar_t__,int) ;

__attribute__((used)) static void remove_all_from_journal_list(struct super_block *sb,
      struct reiserfs_journal_list *jl,
      int debug)
{
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 struct reiserfs_journal_cnode *cn, *last;
 cn = jl->j_realblock;





 while (cn) {
  if (cn->blocknr != 0) {
   if (debug) {
    reiserfs_warning(sb, "reiserfs-2201",
       "block %u, bh is %d, state %ld",
       cn->blocknr, cn->bh ? 1 : 0,
       cn->state);
   }
   cn->state = 0;
   remove_journal_hash(sb, journal->j_list_hash_table,
         jl, cn->blocknr, 1);
  }
  last = cn;
  cn = cn->next;
  free_cnode(sb, last);
 }
 jl->j_realblock = ((void*)0);
}
