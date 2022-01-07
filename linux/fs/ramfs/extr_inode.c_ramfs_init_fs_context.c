
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct ramfs_fs_info {TYPE_1__ mount_opts; } ;
struct fs_context {int * ops; struct ramfs_fs_info* s_fs_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RAMFS_DEFAULT_MODE ;
 struct ramfs_fs_info* kzalloc (int,int ) ;
 int ramfs_context_ops ;

int ramfs_init_fs_context(struct fs_context *fc)
{
 struct ramfs_fs_info *fsi;

 fsi = kzalloc(sizeof(*fsi), GFP_KERNEL);
 if (!fsi)
  return -ENOMEM;

 fsi->mount_opts.mode = RAMFS_DEFAULT_MODE;
 fc->s_fs_info = fsi;
 fc->ops = &ramfs_context_ops;
 return 0;
}
