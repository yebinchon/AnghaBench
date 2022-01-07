
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 int hostfs_fill_sb_common ;
 struct dentry* mount_nodev (struct file_system_type*,int,void*,int ) ;

__attribute__((used)) static struct dentry *hostfs_read_sb(struct file_system_type *type,
     int flags, const char *dev_name,
     void *data)
{
 return mount_nodev(type, flags, data, hostfs_fill_sb_common);
}
