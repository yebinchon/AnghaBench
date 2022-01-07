
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct seg6_local_lwt {TYPE_1__ bpf; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_nla_bpf(struct seg6_local_lwt *a, struct seg6_local_lwt *b)
{
 if (!a->bpf.name && !b->bpf.name)
  return 0;

 if (!a->bpf.name || !b->bpf.name)
  return 1;

 return strcmp(a->bpf.name, b->bpf.name);
}
