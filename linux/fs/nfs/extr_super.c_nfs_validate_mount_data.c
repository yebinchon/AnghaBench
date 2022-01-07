
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_parsed_mount_data {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct file_system_type {int dummy; } ;


 int nfs23_validate_mount_data (void*,struct nfs_parsed_mount_data*,struct nfs_fh*,char const*) ;

__attribute__((used)) static int nfs_validate_mount_data(struct file_system_type *fs_type,
       void *options,
       struct nfs_parsed_mount_data *args,
       struct nfs_fh *mntfh,
       const char *dev_name)
{
 return nfs23_validate_mount_data(options, args, mntfh, dev_name);
}
