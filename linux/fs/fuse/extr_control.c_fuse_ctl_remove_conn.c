
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fuse_conn {int ctl_ndents; struct dentry** ctl_dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {int * i_private; } ;
struct TYPE_4__ {struct dentry* s_root; } ;


 TYPE_2__* d_inode (struct dentry*) ;
 int d_invalidate (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (TYPE_2__*) ;
 TYPE_1__* fuse_control_sb ;

void fuse_ctl_remove_conn(struct fuse_conn *fc)
{
 int i;

 if (!fuse_control_sb)
  return;

 for (i = fc->ctl_ndents - 1; i >= 0; i--) {
  struct dentry *dentry = fc->ctl_dentry[i];
  d_inode(dentry)->i_private = ((void*)0);
  if (!i) {

   d_invalidate(dentry);
  }
  dput(dentry);
 }
 drop_nlink(d_inode(fuse_control_sb->s_root));
}
