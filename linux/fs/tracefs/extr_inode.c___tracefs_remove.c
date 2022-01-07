
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int i_mode; } ;



 int S_IFMT ;
 int d_delete (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_rmdir (TYPE_1__*,struct dentry*) ;
 int fsnotify_unlink (TYPE_1__*,struct dentry*) ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_rmdir (TYPE_1__*,struct dentry*) ;
 int simple_unlink (TYPE_1__*,struct dentry*) ;

__attribute__((used)) static int __tracefs_remove(struct dentry *dentry, struct dentry *parent)
{
 int ret = 0;

 if (simple_positive(dentry)) {
  if (dentry->d_inode) {
   dget(dentry);
   switch (dentry->d_inode->i_mode & S_IFMT) {
   case 128:
    ret = simple_rmdir(parent->d_inode, dentry);
    if (!ret)
     fsnotify_rmdir(parent->d_inode, dentry);
    break;
   default:
    simple_unlink(parent->d_inode, dentry);
    fsnotify_unlink(parent->d_inode, dentry);
    break;
   }
   if (!ret)
    d_delete(dentry);
   dput(dentry);
  }
 }
 return ret;
}
