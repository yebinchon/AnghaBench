
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;


 int down_write (int *) ;
 int nilfs_cleanup_super (struct super_block*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static int nilfs_freeze(struct super_block *sb)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 int err;

 if (sb_rdonly(sb))
  return 0;


 down_write(&nilfs->ns_sem);
 err = nilfs_cleanup_super(sb);
 up_write(&nilfs->ns_sem);
 return err;
}
