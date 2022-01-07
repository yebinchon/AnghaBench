
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 int ovl_copyattr (int ,int ) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;
 int ovl_dentry_version_inc (struct dentry*,int) ;

void ovl_dir_modified(struct dentry *dentry, bool impurity)
{

 ovl_copyattr(d_inode(ovl_dentry_upper(dentry)), d_inode(dentry));

 ovl_dentry_version_inc(dentry, impurity);
}
