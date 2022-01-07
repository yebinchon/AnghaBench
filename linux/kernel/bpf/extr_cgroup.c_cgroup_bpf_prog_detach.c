
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int attach_type; int attach_bpf_fd; int target_fd; } ;
struct cgroup {int dummy; } ;
typedef struct cgroup bpf_prog ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 scalar_t__ IS_ERR (struct cgroup*) ;
 int PTR_ERR (struct cgroup*) ;
 struct cgroup* bpf_prog_get_type (int ,int) ;
 int bpf_prog_put (struct cgroup*) ;
 int cgroup_bpf_detach (struct cgroup*,struct cgroup*,int ,int ) ;
 struct cgroup* cgroup_get_from_fd (int ) ;
 int cgroup_put (struct cgroup*) ;

int cgroup_bpf_prog_detach(const union bpf_attr *attr, enum bpf_prog_type ptype)
{
 struct bpf_prog *prog;
 struct cgroup *cgrp;
 int ret;

 cgrp = cgroup_get_from_fd(attr->target_fd);
 if (IS_ERR(cgrp))
  return PTR_ERR(cgrp);

 prog = bpf_prog_get_type(attr->attach_bpf_fd, ptype);
 if (IS_ERR(prog))
  prog = ((void*)0);

 ret = cgroup_bpf_detach(cgrp, prog, attr->attach_type, 0);
 if (prog)
  bpf_prog_put(prog);

 cgroup_put(cgrp);
 return ret;
}
