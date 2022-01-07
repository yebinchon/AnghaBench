
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; } ;


 int WARN_ON (int) ;
 int __sync_filesystem (struct super_block*,int) ;
 int rwsem_is_locked (int *) ;
 scalar_t__ sb_rdonly (struct super_block*) ;

int sync_filesystem(struct super_block *sb)
{
 int ret;





 WARN_ON(!rwsem_is_locked(&sb->s_umount));




 if (sb_rdonly(sb))
  return 0;

 ret = __sync_filesystem(sb, 0);
 if (ret < 0)
  return ret;
 return __sync_filesystem(sb, 1);
}
