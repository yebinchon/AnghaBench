
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* securityfs_create_dentry (char const*,int ,struct dentry*,void*,struct file_operations const*,int *) ;

struct dentry *securityfs_create_file(const char *name, umode_t mode,
          struct dentry *parent, void *data,
          const struct file_operations *fops)
{
 return securityfs_create_dentry(name, mode, parent, data, fops, ((void*)0));
}
