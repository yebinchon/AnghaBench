
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlbfs_fs_context {scalar_t__ max_hpages; scalar_t__ max_val_type; scalar_t__ min_hpages; scalar_t__ min_val_type; int min_size_opt; int hstate; int max_size_opt; } ;
struct fs_context {struct hugetlbfs_fs_context* fs_private; } ;


 int EINVAL ;
 scalar_t__ NO_SIZE ;
 void* hugetlbfs_size_to_hpages (int ,int ,scalar_t__) ;
 int pr_err (char*) ;

__attribute__((used)) static int hugetlbfs_validate(struct fs_context *fc)
{
 struct hugetlbfs_fs_context *ctx = fc->fs_private;





 ctx->max_hpages = hugetlbfs_size_to_hpages(ctx->hstate,
         ctx->max_size_opt,
         ctx->max_val_type);
 ctx->min_hpages = hugetlbfs_size_to_hpages(ctx->hstate,
         ctx->min_size_opt,
         ctx->min_val_type);




 if (ctx->max_val_type > NO_SIZE &&
     ctx->min_hpages > ctx->max_hpages) {
  pr_err("Minimum size can not be greater than maximum size\n");
  return -EINVAL;
 }

 return 0;
}
