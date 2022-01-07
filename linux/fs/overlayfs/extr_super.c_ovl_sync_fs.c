
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_umount; struct ovl_fs* s_fs_info; } ;
struct ovl_fs {TYPE_1__* upper_mnt; } ;
struct TYPE_2__ {struct super_block* mnt_sb; } ;


 int down_read (int *) ;
 int sync_filesystem (struct super_block*) ;
 int up_read (int *) ;

__attribute__((used)) static int ovl_sync_fs(struct super_block *sb, int wait)
{
 struct ovl_fs *ofs = sb->s_fs_info;
 struct super_block *upper_sb;
 int ret;

 if (!ofs->upper_mnt)
  return 0;
 if (!wait)
  return 0;

 upper_sb = ofs->upper_mnt->mnt_sb;

 down_read(&upper_sb->s_umount);
 ret = sync_filesystem(upper_sb);
 up_read(&upper_sb->s_umount);

 return ret;
}
