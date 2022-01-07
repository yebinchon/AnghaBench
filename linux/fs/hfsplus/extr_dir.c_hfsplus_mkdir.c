
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int hfsplus_mknod (struct inode*,struct dentry*,int,int ) ;

__attribute__((used)) static int hfsplus_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 return hfsplus_mknod(dir, dentry, mode | S_IFDIR, 0);
}
