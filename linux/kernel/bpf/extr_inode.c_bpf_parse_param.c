
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct bpf_mount_opts* fs_private; } ;
struct bpf_mount_opts {int mode; } ;


 int ENOPARAM ;

 int S_IALLUGO ;
 int bpf_fs_parameters ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;

__attribute__((used)) static int bpf_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct bpf_mount_opts *opts = fc->fs_private;
 struct fs_parse_result result;
 int opt;

 opt = fs_parse(fc, &bpf_fs_parameters, param, &result);
 if (opt < 0)




  return opt == -ENOPARAM ? 0 : opt;

 switch (opt) {
 case 128:
  opts->mode = result.uint_32 & S_IALLUGO;
  break;
 }

 return 0;
}
