
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int hfsplus_mknod (struct inode*,struct dentry*,int ,int ) ;

__attribute__((used)) static int hfsplus_create(struct inode *dir, struct dentry *dentry, umode_t mode,
     bool excl)
{
 return hfsplus_mknod(dir, dentry, mode, 0);
}
