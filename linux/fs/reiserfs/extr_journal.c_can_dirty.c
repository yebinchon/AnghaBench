
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_journal_cnode {scalar_t__ blocknr; struct reiserfs_journal_cnode* hnext; struct super_block* sb; scalar_t__ bh; TYPE_1__* jlist; struct reiserfs_journal_cnode* hprev; } ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_2__ {scalar_t__ j_len; int j_commit_left; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int can_dirty(struct reiserfs_journal_cnode *cn)
{
 struct super_block *sb = cn->sb;
 b_blocknr_t blocknr = cn->blocknr;
 struct reiserfs_journal_cnode *cur = cn->hprev;
 int can_dirty = 1;






 while (cur && can_dirty) {
  if (cur->jlist && cur->bh && cur->blocknr && cur->sb == sb &&
      cur->blocknr == blocknr) {
   can_dirty = 0;
  }
  cur = cur->hprev;
 }




 cur = cn->hnext;
 while (cur && can_dirty) {
  if (cur->jlist && cur->jlist->j_len > 0 &&
      atomic_read(&cur->jlist->j_commit_left) > 0 && cur->bh &&
      cur->blocknr && cur->sb == sb && cur->blocknr == blocknr) {
   can_dirty = 0;
  }
  cur = cur->hnext;
 }
 return can_dirty;
}
