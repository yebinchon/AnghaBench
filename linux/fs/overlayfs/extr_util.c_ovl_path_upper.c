
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; int mnt; } ;
struct ovl_fs {int upper_mnt; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct ovl_fs* s_fs_info; } ;


 int ovl_dentry_upper (struct dentry*) ;

void ovl_path_upper(struct dentry *dentry, struct path *path)
{
 struct ovl_fs *ofs = dentry->d_sb->s_fs_info;

 path->mnt = ofs->upper_mnt;
 path->dentry = ovl_dentry_upper(dentry);
}
