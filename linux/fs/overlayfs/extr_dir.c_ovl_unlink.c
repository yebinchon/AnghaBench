
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ovl_do_remove (struct dentry*,int) ;

__attribute__((used)) static int ovl_unlink(struct inode *dir, struct dentry *dentry)
{
 return ovl_do_remove(dentry, 0);
}
