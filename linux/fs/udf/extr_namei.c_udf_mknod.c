
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int old_valid_dev (int ) ;
 int udf_add_nondir (struct dentry*,struct inode*) ;
 struct inode* udf_new_inode (struct inode*,int ) ;

__attribute__((used)) static int udf_mknod(struct inode *dir, struct dentry *dentry, umode_t mode,
       dev_t rdev)
{
 struct inode *inode;

 if (!old_valid_dev(rdev))
  return -EINVAL;

 inode = udf_new_inode(dir, mode);
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 init_special_inode(inode, mode, rdev);
 return udf_add_nondir(dentry, inode);
}
