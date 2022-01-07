
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int omfs_add_node (struct inode*,struct dentry*,int) ;

__attribute__((used)) static int omfs_create(struct inode *dir, struct dentry *dentry, umode_t mode,
  bool excl)
{
 return omfs_add_node(dir, dentry, mode | S_IFREG);
}
