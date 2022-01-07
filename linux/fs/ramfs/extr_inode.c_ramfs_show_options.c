
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct ramfs_fs_info {TYPE_2__ mount_opts; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_3__ {struct ramfs_fs_info* s_fs_info; } ;


 scalar_t__ RAMFS_DEFAULT_MODE ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int ramfs_show_options(struct seq_file *m, struct dentry *root)
{
 struct ramfs_fs_info *fsi = root->d_sb->s_fs_info;

 if (fsi->mount_opts.mode != RAMFS_DEFAULT_MODE)
  seq_printf(m, ",mode=%o", fsi->mount_opts.mode);
 return 0;
}
