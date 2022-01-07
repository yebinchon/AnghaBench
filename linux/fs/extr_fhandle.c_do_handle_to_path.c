
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; int dentry; } ;
struct file_handle {int handle_bytes; int handle_type; scalar_t__ f_handle; } ;
struct fid {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int exportfs_decode_fh (int ,struct fid*,int,int ,int ,int *) ;
 int get_vfsmount_from_fd (int) ;
 int mntput (int ) ;
 int vfs_dentry_acceptable ;

__attribute__((used)) static int do_handle_to_path(int mountdirfd, struct file_handle *handle,
        struct path *path)
{
 int retval = 0;
 int handle_dwords;

 path->mnt = get_vfsmount_from_fd(mountdirfd);
 if (IS_ERR(path->mnt)) {
  retval = PTR_ERR(path->mnt);
  goto out_err;
 }

 handle_dwords = handle->handle_bytes >> 2;
 path->dentry = exportfs_decode_fh(path->mnt,
       (struct fid *)handle->f_handle,
       handle_dwords, handle->handle_type,
       vfs_dentry_acceptable, ((void*)0));
 if (IS_ERR(path->dentry)) {
  retval = PTR_ERR(path->dentry);
  goto out_mnt;
 }
 return 0;
out_mnt:
 mntput(path->mnt);
out_err:
 return retval;
}
