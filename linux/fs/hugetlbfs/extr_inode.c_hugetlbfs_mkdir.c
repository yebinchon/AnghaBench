
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int hugetlbfs_mknod (struct inode*,struct dentry*,int,int ) ;
 int inc_nlink (struct inode*) ;

__attribute__((used)) static int hugetlbfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 int retval = hugetlbfs_mknod(dir, dentry, mode | S_IFDIR, 0);
 if (!retval)
  inc_nlink(dir);
 return retval;
}
