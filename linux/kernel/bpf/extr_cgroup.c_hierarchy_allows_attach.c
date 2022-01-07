
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* flags; int * progs; } ;
struct cgroup {TYPE_1__ bpf; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_F_ALLOW_MULTI ;
 int BPF_F_ALLOW_OVERRIDE ;
 int WARN_ON_ONCE (int) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int prog_list_length (int *) ;

__attribute__((used)) static bool hierarchy_allows_attach(struct cgroup *cgrp,
        enum bpf_attach_type type,
        u32 new_flags)
{
 struct cgroup *p;

 p = cgroup_parent(cgrp);
 if (!p)
  return 1;
 do {
  u32 flags = p->bpf.flags[type];
  u32 cnt;

  if (flags & BPF_F_ALLOW_MULTI)
   return 1;
  cnt = prog_list_length(&p->bpf.progs[type]);
  WARN_ON_ONCE(cnt > 1);
  if (cnt == 1)
   return !!(flags & BPF_F_ALLOW_OVERRIDE);
  p = cgroup_parent(p);
 } while (p);
 return 1;
}
