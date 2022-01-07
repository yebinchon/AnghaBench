
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 scalar_t__ need_resched () ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;
 int schedule () ;

__attribute__((used)) static inline void reiserfs_cond_resched(struct super_block *s)
{
 if (need_resched()) {
  int depth;

  depth = reiserfs_write_unlock_nested(s);
  schedule();
  reiserfs_write_lock_nested(s, depth);
 }
}
