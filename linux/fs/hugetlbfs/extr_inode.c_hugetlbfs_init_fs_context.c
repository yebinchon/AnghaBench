
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlbfs_fs_context {int max_hpages; int nr_inodes; int mode; int min_hpages; void* min_val_type; void* max_val_type; int * hstate; int gid; int uid; } ;
struct fs_context {int * ops; struct hugetlbfs_fs_context* fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* NO_SIZE ;
 int current_fsgid () ;
 int current_fsuid () ;
 int default_hstate ;
 int hugetlbfs_fs_context_ops ;
 struct hugetlbfs_fs_context* kzalloc (int,int ) ;

__attribute__((used)) static int hugetlbfs_init_fs_context(struct fs_context *fc)
{
 struct hugetlbfs_fs_context *ctx;

 ctx = kzalloc(sizeof(struct hugetlbfs_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->max_hpages = -1;
 ctx->nr_inodes = -1;
 ctx->uid = current_fsuid();
 ctx->gid = current_fsgid();
 ctx->mode = 0755;
 ctx->hstate = &default_hstate;
 ctx->min_hpages = -1;
 ctx->max_val_type = NO_SIZE;
 ctx->min_val_type = NO_SIZE;
 fc->fs_private = ctx;
 fc->ops = &hugetlbfs_fs_context_ops;
 return 0;
}
