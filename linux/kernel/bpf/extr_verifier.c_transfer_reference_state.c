
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_state {int acquired_refs; } ;


 int copy_reference_state (struct bpf_func_state*,struct bpf_func_state*) ;
 int realloc_reference_state (struct bpf_func_state*,int ,int) ;

__attribute__((used)) static int transfer_reference_state(struct bpf_func_state *dst,
        struct bpf_func_state *src)
{
 int err = realloc_reference_state(dst, src->acquired_refs, 0);
 if (err)
  return err;
 err = copy_reference_state(dst, src);
 if (err)
  return err;
 return 0;
}
