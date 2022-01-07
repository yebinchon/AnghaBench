
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 int CONFIG_TMPFS ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ is_tmpfs ;
 int ramfs_init_fs_context (struct fs_context*) ;
 int shmem_init_fs_context (struct fs_context*) ;

__attribute__((used)) static int rootfs_init_fs_context(struct fs_context *fc)
{
 if (IS_ENABLED(CONFIG_TMPFS) && is_tmpfs)
  return shmem_init_fs_context(fc);

 return ramfs_init_fs_context(fc);
}
