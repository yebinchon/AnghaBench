
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_debug (char*,struct dentry*,struct dentry*,int) ;
 int vfs_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,int *,unsigned int) ;

__attribute__((used)) static inline int ovl_do_rename(struct inode *olddir, struct dentry *olddentry,
    struct inode *newdir, struct dentry *newdentry,
    unsigned int flags)
{
 int err;

 pr_debug("rename(%pd2, %pd2, 0x%x)\n", olddentry, newdentry, flags);
 err = vfs_rename(olddir, olddentry, newdir, newdentry, ((void*)0), flags);
 if (err) {
  pr_debug("...rename(%pd2, %pd2, ...) = %i\n",
    olddentry, newdentry, err);
 }
 return err;
}
