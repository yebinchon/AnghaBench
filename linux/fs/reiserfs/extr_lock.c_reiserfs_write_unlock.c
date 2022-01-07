
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_sb_info {int lock_depth; int lock; int * lock_owner; } ;


 int BUG_ON (int) ;
 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 int * current ;
 int mutex_unlock (int *) ;

void reiserfs_write_unlock(struct super_block *s)
{
 struct reiserfs_sb_info *sb_i = REISERFS_SB(s);






 BUG_ON(sb_i->lock_owner != current);

 if (--sb_i->lock_depth == -1) {
  sb_i->lock_owner = ((void*)0);
  mutex_unlock(&sb_i->lock);
 }
}
