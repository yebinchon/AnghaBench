
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int fuse_mknod (struct inode*,struct dentry*,int ,int ) ;

__attribute__((used)) static int fuse_create(struct inode *dir, struct dentry *entry, umode_t mode,
         bool excl)
{
 return fuse_mknod(dir, entry, mode, 0);
}
