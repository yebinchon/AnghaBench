
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_lwt_prog {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int bpf_lwt_prog_cmp(struct bpf_lwt_prog *a, struct bpf_lwt_prog *b)
{




 if (!a->name && !b->name)
  return 0;

 if (!a->name || !b->name)
  return 1;

 return strcmp(a->name, b->name);
}
