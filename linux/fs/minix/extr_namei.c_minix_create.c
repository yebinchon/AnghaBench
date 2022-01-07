
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int minix_mknod (struct inode*,struct dentry*,int ,int ) ;

__attribute__((used)) static int minix_create(struct inode *dir, struct dentry *dentry, umode_t mode,
  bool excl)
{
 return minix_mknod(dir, dentry, mode, 0);
}
