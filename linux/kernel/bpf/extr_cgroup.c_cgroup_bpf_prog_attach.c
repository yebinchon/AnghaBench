
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int attach_flags; int attach_type; int target_fd; } ;
struct cgroup {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 scalar_t__ IS_ERR (struct cgroup*) ;
 int PTR_ERR (struct cgroup*) ;
 int cgroup_bpf_attach (struct cgroup*,struct bpf_prog*,int ,int ) ;
 struct cgroup* cgroup_get_from_fd (int ) ;
 int cgroup_put (struct cgroup*) ;

int cgroup_bpf_prog_attach(const union bpf_attr *attr,
      enum bpf_prog_type ptype, struct bpf_prog *prog)
{
 struct cgroup *cgrp;
 int ret;

 cgrp = cgroup_get_from_fd(attr->target_fd);
 if (IS_ERR(cgrp))
  return PTR_ERR(cgrp);

 ret = cgroup_bpf_attach(cgrp, prog, attr->attach_type,
    attr->attach_flags);
 cgroup_put(cgrp);
 return ret;
}
