
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* mount_single (struct file_system_type*,int,void*,int ) ;
 int pstore_fill_super ;

__attribute__((used)) static struct dentry *pstore_mount(struct file_system_type *fs_type,
 int flags, const char *dev_name, void *data)
{
 return mount_single(fs_type, flags, data, pstore_fill_super);
}
