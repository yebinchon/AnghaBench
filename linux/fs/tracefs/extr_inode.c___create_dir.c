
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode_operations {int dummy; } ;
struct inode {int i_mode; int * i_fop; struct inode_operations const* i_op; } ;
struct dentry {TYPE_1__* d_parent; int d_sb; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct dentry* end_creating (struct dentry*) ;
 struct dentry* failed_creating (struct dentry*) ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int simple_dir_operations ;
 struct dentry* start_creating (char const*,struct dentry*) ;
 struct inode* tracefs_get_inode (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dentry *__create_dir(const char *name, struct dentry *parent,
       const struct inode_operations *ops)
{
 struct dentry *dentry = start_creating(name, parent);
 struct inode *inode;

 if (IS_ERR(dentry))
  return ((void*)0);

 inode = tracefs_get_inode(dentry->d_sb);
 if (unlikely(!inode))
  return failed_creating(dentry);

 inode->i_mode = S_IFDIR | S_IRWXU | S_IRUGO | S_IXUGO;
 inode->i_op = ops;
 inode->i_fop = &simple_dir_operations;


 inc_nlink(inode);
 d_instantiate(dentry, inode);
 inc_nlink(dentry->d_parent->d_inode);
 fsnotify_mkdir(dentry->d_parent->d_inode, dentry);
 return end_creating(dentry);
}
