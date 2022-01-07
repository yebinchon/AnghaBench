
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ loff_t ;


 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 struct inode* d_inode (struct dentry*) ;
 int ramfs_nommu_resize (struct inode*,scalar_t__,scalar_t__) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

__attribute__((used)) static int ramfs_nommu_setattr(struct dentry *dentry, struct iattr *ia)
{
 struct inode *inode = d_inode(dentry);
 unsigned int old_ia_valid = ia->ia_valid;
 int ret = 0;


 ret = setattr_prepare(dentry, ia);
 if (ret)
  return ret;


 if (ia->ia_valid & ATTR_SIZE) {
  loff_t size = inode->i_size;

  if (ia->ia_size != size) {
   ret = ramfs_nommu_resize(inode, ia->ia_size, size);
   if (ret < 0 || ia->ia_valid == ATTR_SIZE)
    goto out;
  } else {



   ia->ia_valid |= ATTR_MTIME|ATTR_CTIME;
  }
 }

 setattr_copy(inode, ia);
 out:
 ia->ia_valid = old_ia_valid;
 return ret;
}
