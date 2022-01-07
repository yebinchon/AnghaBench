
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int SECCLASS_DIR ;
 int may_create (struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int selinux_inode_mkdir(struct inode *dir, struct dentry *dentry, umode_t mask)
{
 return may_create(dir, dentry, SECCLASS_DIR);
}
