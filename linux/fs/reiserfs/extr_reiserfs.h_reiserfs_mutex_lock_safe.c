
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct mutex {int dummy; } ;


 int mutex_lock (struct mutex*) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;

__attribute__((used)) static inline void reiserfs_mutex_lock_safe(struct mutex *m,
         struct super_block *s)
{
 int depth;

 depth = reiserfs_write_unlock_nested(s);
 mutex_lock(m);
 reiserfs_write_lock_nested(s, depth);
}
