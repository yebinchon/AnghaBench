
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int clear_ncl (int ) ;
 int d_delete (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static void nfsdfs_remove_file(struct inode *dir, struct dentry *dentry)
{
 int ret;

 clear_ncl(d_inode(dentry));
 dget(dentry);
 ret = simple_unlink(dir, dentry);
 d_delete(dentry);
 dput(dentry);
 WARN_ON_ONCE(ret);
}
