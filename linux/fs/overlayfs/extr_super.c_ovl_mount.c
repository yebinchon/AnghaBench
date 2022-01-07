
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* mount_nodev (struct file_system_type*,int,void*,int ) ;
 int ovl_fill_super ;

__attribute__((used)) static struct dentry *ovl_mount(struct file_system_type *fs_type, int flags,
    const char *dev_name, void *raw_data)
{
 return mount_nodev(fs_type, flags, raw_data, ovl_fill_super);
}
