
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int d_parent; } ;


 int d_inode (int ) ;
 int inode_eq_iversion (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfat_d_version (struct dentry*) ;

__attribute__((used)) static int vfat_revalidate_shortname(struct dentry *dentry)
{
 int ret = 1;
 spin_lock(&dentry->d_lock);
 if (!inode_eq_iversion(d_inode(dentry->d_parent), vfat_d_version(dentry)))
  ret = 0;
 spin_unlock(&dentry->d_lock);
 return ret;
}
