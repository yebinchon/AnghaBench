
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_fs_context {int fd_present; int rootmode_present; int user_id_present; int group_id_present; int default_permissions; int allow_other; int blksize; int is_bdev; int max_read; int group_id; int user_id; int rootmode; int fd; int * subtype; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int * string; } ;
struct fs_context {int user_ns; int * source; struct fuse_fs_context* fs_private; } ;


 int EINVAL ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int fuse_fs_parameters ;
 int fuse_valid_type (int ) ;
 int gid_valid (int ) ;
 int invalf (struct fs_context*,char*) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int uid_valid (int ) ;

__attribute__((used)) static int fuse_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct fs_parse_result result;
 struct fuse_fs_context *ctx = fc->fs_private;
 int opt;

 opt = fs_parse(fc, &fuse_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 130:
  if (fc->source)
   return invalf(fc, "fuse: Multiple sources specified");
  fc->source = param->string;
  param->string = ((void*)0);
  break;

 case 129:
  if (ctx->subtype)
   return invalf(fc, "fuse: Multiple subtypes specified");
  ctx->subtype = param->string;
  param->string = ((void*)0);
  return 0;

 case 134:
  ctx->fd = result.uint_32;
  ctx->fd_present = 1;
  break;

 case 131:
  if (!fuse_valid_type(result.uint_32))
   return invalf(fc, "fuse: Invalid rootmode");
  ctx->rootmode = result.uint_32;
  ctx->rootmode_present = 1;
  break;

 case 128:
  ctx->user_id = make_kuid(fc->user_ns, result.uint_32);
  if (!uid_valid(ctx->user_id))
   return invalf(fc, "fuse: Invalid user_id");
  ctx->user_id_present = 1;
  break;

 case 133:
  ctx->group_id = make_kgid(fc->user_ns, result.uint_32);
  if (!gid_valid(ctx->group_id))
   return invalf(fc, "fuse: Invalid group_id");
  ctx->group_id_present = 1;
  break;

 case 135:
  ctx->default_permissions = 1;
  break;

 case 137:
  ctx->allow_other = 1;
  break;

 case 132:
  ctx->max_read = result.uint_32;
  break;

 case 136:
  if (!ctx->is_bdev)
   return invalf(fc, "fuse: blksize only supported for fuseblk");
  ctx->blksize = result.uint_32;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
