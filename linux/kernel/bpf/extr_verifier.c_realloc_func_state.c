
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_state {int dummy; } ;


 int realloc_reference_state (struct bpf_func_state*,int,int) ;
 int realloc_stack_state (struct bpf_func_state*,int,int) ;

__attribute__((used)) static int realloc_func_state(struct bpf_func_state *state, int stack_size,
         int refs_size, bool copy_old)
{
 int err = realloc_reference_state(state, refs_size, copy_old);
 if (err)
  return err;
 return realloc_stack_state(state, stack_size, copy_old);
}
