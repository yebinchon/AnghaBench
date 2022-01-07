
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int do_tmpfile (struct inode*,struct dentry*,int ,int *) ;

__attribute__((used)) static int ubifs_tmpfile(struct inode *dir, struct dentry *dentry,
    umode_t mode)
{
 return do_tmpfile(dir, dentry, mode, ((void*)0));
}
