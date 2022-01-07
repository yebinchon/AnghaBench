
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_tmpfile(struct inode *inode, struct dentry *dentry,
        umode_t mode)
{
 return -EIO;
}
