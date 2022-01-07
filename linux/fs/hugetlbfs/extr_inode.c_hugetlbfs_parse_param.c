
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hugetlbfs_fs_context {unsigned int mode; void* min_val_type; void* min_size_opt; int hstate; void* nr_inodes; void* max_val_type; void* max_size_opt; int gid; int uid; } ;
struct fs_parse_result {unsigned int uint_32; } ;
struct fs_parameter {int key; int * string; } ;
struct fs_context {struct hugetlbfs_fs_context* fs_private; } ;


 int EINVAL ;







 void* SIZE_PERCENT ;
 void* SIZE_STD ;
 int current_user_ns () ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int gid_valid (int ) ;
 int hugetlb_fs_parameters ;
 int invalf (struct fs_context*,char*,int *,int ) ;
 int isdigit (int ) ;
 int make_kgid (int ,unsigned int) ;
 int make_kuid (int ,unsigned int) ;
 void* memparse (int *,char**) ;
 int pr_err (char*,unsigned long) ;
 int size_to_hstate (unsigned long) ;
 int uid_valid (int ) ;

__attribute__((used)) static int hugetlbfs_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct hugetlbfs_fs_context *ctx = fc->fs_private;
 struct fs_parse_result result;
 char *rest;
 unsigned long ps;
 int opt;

 opt = fs_parse(fc, &hugetlb_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 128:
  ctx->uid = make_kuid(current_user_ns(), result.uint_32);
  if (!uid_valid(ctx->uid))
   goto bad_val;
  return 0;

 case 134:
  ctx->gid = make_kgid(current_user_ns(), result.uint_32);
  if (!gid_valid(ctx->gid))
   goto bad_val;
  return 0;

 case 132:
  ctx->mode = result.uint_32 & 01777U;
  return 0;

 case 129:

  if (!isdigit(param->string[0]))
   goto bad_val;
  ctx->max_size_opt = memparse(param->string, &rest);
  ctx->max_val_type = SIZE_STD;
  if (*rest == '%')
   ctx->max_val_type = SIZE_PERCENT;
  return 0;

 case 131:

  if (!isdigit(param->string[0]))
   goto bad_val;
  ctx->nr_inodes = memparse(param->string, &rest);
  return 0;

 case 130:
  ps = memparse(param->string, &rest);
  ctx->hstate = size_to_hstate(ps);
  if (!ctx->hstate) {
   pr_err("Unsupported page size %lu MB\n", ps >> 20);
   return -EINVAL;
  }
  return 0;

 case 133:

  if (!isdigit(param->string[0]))
   goto bad_val;
  ctx->min_size_opt = memparse(param->string, &rest);
  ctx->min_val_type = SIZE_STD;
  if (*rest == '%')
   ctx->min_val_type = SIZE_PERCENT;
  return 0;

 default:
  return -EINVAL;
 }

bad_val:
 return invalf(fc, "hugetlbfs: Bad value '%s' for mount option '%s'\n",
        param->string, param->key);
}
