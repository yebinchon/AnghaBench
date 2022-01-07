
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* aafs_create (char const*,int ,struct dentry*,void*,int *,struct file_operations const*,int *) ;

__attribute__((used)) static struct dentry *aafs_create_file(const char *name, umode_t mode,
           struct dentry *parent, void *data,
           const struct file_operations *fops)
{
 return aafs_create(name, mode, parent, data, ((void*)0), fops, ((void*)0));
}
