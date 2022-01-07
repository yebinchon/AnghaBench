
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {void* d_fsdata; struct dentry* d_parent; } ;
struct TYPE_2__ {unsigned long ip_dir_lock_gen; } ;


 int BUG_ON (int ) ;
 TYPE_1__* OCFS2_I (int ) ;
 int d_inode (struct dentry*) ;

void ocfs2_dentry_attach_gen(struct dentry *dentry)
{
 unsigned long gen =
  OCFS2_I(d_inode(dentry->d_parent))->ip_dir_lock_gen;
 BUG_ON(d_inode(dentry));
 dentry->d_fsdata = (void *)gen;
}
