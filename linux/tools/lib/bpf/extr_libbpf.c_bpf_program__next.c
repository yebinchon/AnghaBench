
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;


 struct bpf_program* __bpf_program__iter (struct bpf_program*,struct bpf_object const*,int) ;
 scalar_t__ bpf_program__is_function_storage (struct bpf_program*,struct bpf_object const*) ;

struct bpf_program *
bpf_program__next(struct bpf_program *prev, const struct bpf_object *obj)
{
 struct bpf_program *prog = prev;

 do {
  prog = __bpf_program__iter(prog, obj, 1);
 } while (prog && bpf_program__is_function_storage(prog, obj));

 return prog;
}
