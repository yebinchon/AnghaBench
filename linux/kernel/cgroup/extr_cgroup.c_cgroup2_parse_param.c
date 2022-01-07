
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_parse_result {int dummy; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {int dummy; } ;
struct cgroup_fs_context {int flags; } ;


 int CGRP_ROOT_MEMORY_LOCAL_EVENTS ;
 int CGRP_ROOT_NS_DELEGATE ;
 int EINVAL ;


 int cgroup2_fs_parameters ;
 struct cgroup_fs_context* cgroup_fc2context (struct fs_context*) ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;

__attribute__((used)) static int cgroup2_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct cgroup_fs_context *ctx = cgroup_fc2context(fc);
 struct fs_parse_result result;
 int opt;

 opt = fs_parse(fc, &cgroup2_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 128:
  ctx->flags |= CGRP_ROOT_NS_DELEGATE;
  return 0;
 case 129:
  ctx->flags |= CGRP_ROOT_MEMORY_LOCAL_EVENTS;
  return 0;
 }
 return -EINVAL;
}
