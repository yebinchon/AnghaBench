
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_sb_info {scalar_t__ lock_owner; int lock_depth; int lock; } ;


 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 scalar_t__ current ;
 int mutex_lock (int *) ;

void reiserfs_write_lock(struct super_block *s)
{
 struct reiserfs_sb_info *sb_i = REISERFS_SB(s);

 if (sb_i->lock_owner != current) {
  mutex_lock(&sb_i->lock);
  sb_i->lock_owner = current;
 }


 sb_i->lock_depth++;
}
