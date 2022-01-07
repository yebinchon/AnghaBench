
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* mount_bdev (struct file_system_type*,int,char const*,void*,int ) ;
 int reiserfs_fill_super ;

__attribute__((used)) static struct dentry *get_super_block(struct file_system_type *fs_type,
      int flags, const char *dev_name,
      void *data)
{
 return mount_bdev(fs_type, flags, dev_name, data, reiserfs_fill_super);
}
