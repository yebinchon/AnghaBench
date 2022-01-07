
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int ovl_create_object (struct dentry*,int,int ,int *) ;

__attribute__((used)) static int ovl_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 return ovl_create_object(dentry, (mode & 07777) | S_IFDIR, 0, ((void*)0));
}
