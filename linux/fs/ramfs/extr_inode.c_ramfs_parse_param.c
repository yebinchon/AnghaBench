
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct ramfs_fs_info {TYPE_1__ mount_opts; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct ramfs_fs_info* s_fs_info; } ;


 int ENOPARAM ;

 int S_IALLUGO ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int ramfs_fs_parameters ;

__attribute__((used)) static int ramfs_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct fs_parse_result result;
 struct ramfs_fs_info *fsi = fc->s_fs_info;
 int opt;

 opt = fs_parse(fc, &ramfs_fs_parameters, param, &result);
 if (opt < 0) {






  if (opt == -ENOPARAM)
   opt = 0;
  return opt;
 }

 switch (opt) {
 case 128:
  fsi->mount_opts.mode = result.uint_32 & S_IALLUGO;
  break;
 }

 return 0;
}
