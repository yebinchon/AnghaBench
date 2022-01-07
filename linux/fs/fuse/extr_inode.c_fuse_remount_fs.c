
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EINVAL ;
 int SB_MANDLOCK ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int fuse_remount_fs(struct super_block *sb, int *flags, char *data)
{
 sync_filesystem(sb);
 if (*flags & SB_MANDLOCK)
  return -EINVAL;

 return 0;
}
