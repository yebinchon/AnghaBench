
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PTR_ERR (struct inode*) ;
 int __putname (char*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 char* dentry_name (struct dentry*) ;
 int do_mknod (char*,int ,int ,int ) ;
 struct inode* hostfs_iget (int ) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int iput (struct inode*) ;
 int read_name (struct inode*,char*) ;

__attribute__((used)) static int hostfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
 struct inode *inode;
 char *name;
 int err;

 inode = hostfs_iget(dir->i_sb);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out;
 }

 err = -ENOMEM;
 name = dentry_name(dentry);
 if (name == ((void*)0))
  goto out_put;

 init_special_inode(inode, mode, dev);
 err = do_mknod(name, mode, MAJOR(dev), MINOR(dev));
 if (err)
  goto out_free;

 err = read_name(inode, name);
 __putname(name);
 if (err)
  goto out_put;

 d_instantiate(dentry, inode);
 return 0;

 out_free:
 __putname(name);
 out_put:
 iput(inode);
 out:
 return err;
}
