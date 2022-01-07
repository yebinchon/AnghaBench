
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_fs_context {int mask; int hidepid; int gid; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct proc_fs_context* fs_private; } ;


 int EINVAL ;
 int HIDEPID_INVISIBLE ;
 int HIDEPID_OFF ;


 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int invalf (struct fs_context*,char*) ;
 int proc_fs_parameters ;

__attribute__((used)) static int proc_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct proc_fs_context *ctx = fc->fs_private;
 struct fs_parse_result result;
 int opt;

 opt = fs_parse(fc, &proc_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 129:
  ctx->gid = result.uint_32;
  break;

 case 128:
  ctx->hidepid = result.uint_32;
  if (ctx->hidepid < HIDEPID_OFF ||
      ctx->hidepid > HIDEPID_INVISIBLE)
   return invalf(fc, "proc: hidepid value must be between 0 and 2.\n");
  break;

 default:
  return -EINVAL;
 }

 ctx->mask |= 1 << opt;
 return 0;
}
