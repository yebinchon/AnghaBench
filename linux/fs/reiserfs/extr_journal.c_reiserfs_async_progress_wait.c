
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int j_async_throttle; } ;


 int BLK_RW_ASYNC ;
 int HZ ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 scalar_t__ atomic_read (int *) ;
 int congestion_wait (int ,int) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;

__attribute__((used)) static int reiserfs_async_progress_wait(struct super_block *s)
{
 struct reiserfs_journal *j = SB_JOURNAL(s);

 if (atomic_read(&j->j_async_throttle)) {
  int depth;

  depth = reiserfs_write_unlock_nested(s);
  congestion_wait(BLK_RW_ASYNC, HZ / 10);
  reiserfs_write_lock_nested(s, depth);
 }

 return 0;
}
