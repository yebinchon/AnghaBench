
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int idx; } ;
struct bpf_object {size_t nr_programs; struct bpf_program* programs; } ;



__attribute__((used)) static struct bpf_program *
bpf_object__find_prog_by_idx(struct bpf_object *obj, int idx)
{
 struct bpf_program *prog;
 size_t i;

 for (i = 0; i < obj->nr_programs; i++) {
  prog = &obj->programs[i];
  if (prog->idx == idx)
   return prog;
 }
 return ((void*)0);
}
