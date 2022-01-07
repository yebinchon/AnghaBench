
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_cattr {char const* link; int mode; int rdev; } ;
struct inode {int i_mode; int i_lock; int i_state; } ;
struct dentry {TYPE_1__* d_parent; int d_sb; } ;
typedef int dev_t ;
struct TYPE_2__ {int d_inode; } ;


 int ENOMEM ;
 int I_CREATING ;
 struct inode* d_inode (struct dentry*) ;
 int inode_init_owner (struct inode*,int ,int) ;
 int iput (struct inode*) ;
 int ovl_create_or_link (struct dentry*,struct inode*,struct ovl_cattr*,int) ;
 int ovl_drop_write (struct dentry*) ;
 struct inode* ovl_new_inode (int ,int,int ) ;
 int ovl_want_write (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ovl_create_object(struct dentry *dentry, int mode, dev_t rdev,
        const char *link)
{
 int err;
 struct inode *inode;
 struct ovl_cattr attr = {
  .rdev = rdev,
  .link = link,
 };

 err = ovl_want_write(dentry);
 if (err)
  goto out;


 err = -ENOMEM;
 inode = ovl_new_inode(dentry->d_sb, mode, rdev);
 if (!inode)
  goto out_drop_write;

 spin_lock(&inode->i_lock);
 inode->i_state |= I_CREATING;
 spin_unlock(&inode->i_lock);

 inode_init_owner(inode, dentry->d_parent->d_inode, mode);
 attr.mode = inode->i_mode;

 err = ovl_create_or_link(dentry, inode, &attr, 0);

 if (inode != d_inode(dentry))
  iput(inode);

out_drop_write:
 ovl_drop_write(dentry);
out:
 return err;
}
