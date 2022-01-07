
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal_list {struct reiserfs_journal_cnode* j_realblock; int j_state; } ;
struct reiserfs_journal_cnode {struct reiserfs_journal_cnode* next; scalar_t__ bh; scalar_t__ blocknr; } ;


 int BUG_ON (int) ;
 int LIST_DIRTY ;
 scalar_t__ buffer_journal_dirty (scalar_t__) ;
 scalar_t__ buffer_journal_prepared (scalar_t__) ;
 int can_dirty (struct reiserfs_journal_cnode*) ;
 int clear_buffer_journal_new (scalar_t__) ;
 struct reiserfs_journal_list* find_newer_jl_for_cn (struct reiserfs_journal_cnode*) ;
 int mark_buffer_dirty (scalar_t__) ;
 int set_buffer_journal_restore_dirty (scalar_t__) ;
 int set_buffer_journal_test (scalar_t__) ;

__attribute__((used)) static void dirty_one_transaction(struct super_block *s,
     struct reiserfs_journal_list *jl)
{
 struct reiserfs_journal_cnode *cn;
 struct reiserfs_journal_list *pjl;

 jl->j_state |= LIST_DIRTY;
 cn = jl->j_realblock;
 while (cn) {





  pjl = find_newer_jl_for_cn(cn);
  if (!pjl && cn->blocknr && cn->bh
      && buffer_journal_dirty(cn->bh)) {
   BUG_ON(!can_dirty(cn));





   clear_buffer_journal_new(cn->bh);
   if (buffer_journal_prepared(cn->bh)) {
    set_buffer_journal_restore_dirty(cn->bh);
   } else {
    set_buffer_journal_test(cn->bh);
    mark_buffer_dirty(cn->bh);
   }
  }
  cn = cn->next;
 }
}
