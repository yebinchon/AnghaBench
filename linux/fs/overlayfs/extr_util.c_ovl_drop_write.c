
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_fs {int upper_mnt; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct ovl_fs* s_fs_info; } ;


 int mnt_drop_write (int ) ;

void ovl_drop_write(struct dentry *dentry)
{
 struct ovl_fs *ofs = dentry->d_sb->s_fs_info;
 mnt_drop_write(ofs->upper_mnt);
}
