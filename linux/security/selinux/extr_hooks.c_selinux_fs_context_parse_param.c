
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_parse_result {int dummy; } ;
struct fs_parameter {int * string; } ;
struct fs_context {int security; } ;


 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int selinux_add_opt (int,int *,int *) ;
 int selinux_fs_parameters ;

__attribute__((used)) static int selinux_fs_context_parse_param(struct fs_context *fc,
       struct fs_parameter *param)
{
 struct fs_parse_result result;
 int opt, rc;

 opt = fs_parse(fc, &selinux_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 rc = selinux_add_opt(opt, param->string, &fc->security);
 if (!rc) {
  param->string = ((void*)0);
  rc = 1;
 }
 return rc;
}
