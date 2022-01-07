
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int compr; int override_compr; int rp_size; } ;
struct jffs2_sb_info {TYPE_2__ mount_opts; TYPE_1__* mtd; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct jffs2_sb_info* s_fs_info; } ;
struct TYPE_3__ {int size; } ;


 int EINVAL ;


 int UINT_MAX ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int invalf (struct fs_context*,char*,...) ;
 int jffs2_fs_parameters ;

__attribute__((used)) static int jffs2_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct fs_parse_result result;
 struct jffs2_sb_info *c = fc->s_fs_info;
 int opt;

 opt = fs_parse(fc, &jffs2_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 129:
  c->mount_opts.compr = result.uint_32;
  c->mount_opts.override_compr = 1;
  break;
 case 128:
  if (result.uint_32 > UINT_MAX / 1024)
   return invalf(fc, "jffs2: rp_size unrepresentable");
  opt = result.uint_32 * 1024;
  if (opt > c->mtd->size)
   return invalf(fc, "jffs2: Too large reserve pool specified, max is %llu KB",
          c->mtd->size / 1024);
  c->mount_opts.rp_size = opt;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
