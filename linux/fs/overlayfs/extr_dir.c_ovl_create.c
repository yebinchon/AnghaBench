
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int ovl_create_object (struct dentry*,int,int ,int *) ;

__attribute__((used)) static int ovl_create(struct inode *dir, struct dentry *dentry, umode_t mode,
        bool excl)
{
 return ovl_create_object(dentry, (mode & 07777) | S_IFREG, 0, ((void*)0));
}
