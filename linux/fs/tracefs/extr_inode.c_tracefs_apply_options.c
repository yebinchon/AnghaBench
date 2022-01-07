
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracefs_mount_opts {int gid; int uid; int mode; } ;
struct tracefs_fs_info {struct tracefs_mount_opts mount_opts; } ;
struct super_block {TYPE_1__* s_root; struct tracefs_fs_info* s_fs_info; } ;
struct inode {int i_gid; int i_uid; int i_mode; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int S_IALLUGO ;

__attribute__((used)) static int tracefs_apply_options(struct super_block *sb)
{
 struct tracefs_fs_info *fsi = sb->s_fs_info;
 struct inode *inode = sb->s_root->d_inode;
 struct tracefs_mount_opts *opts = &fsi->mount_opts;

 inode->i_mode &= ~S_IALLUGO;
 inode->i_mode |= opts->mode;

 inode->i_uid = opts->uid;
 inode->i_gid = opts->gid;

 return 0;
}
