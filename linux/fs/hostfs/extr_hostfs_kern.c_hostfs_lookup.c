
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int __putname (char*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 char* dentry_name (struct dentry*) ;
 struct inode* hostfs_iget (int ) ;
 int iput (struct inode*) ;
 int read_name (struct inode*,char*) ;

__attribute__((used)) static struct dentry *hostfs_lookup(struct inode *ino, struct dentry *dentry,
        unsigned int flags)
{
 struct inode *inode;
 char *name;
 int err;

 inode = hostfs_iget(ino->i_sb);
 if (IS_ERR(inode))
  goto out;

 err = -ENOMEM;
 name = dentry_name(dentry);
 if (name) {
  err = read_name(inode, name);
  __putname(name);
 }
 if (err) {
  iput(inode);
  inode = (err == -ENOENT) ? ((void*)0) : ERR_PTR(err);
 }
 out:
 return d_splice_alias(inode, dentry);
}
