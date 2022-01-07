
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_map {int map_flags; int unpriv_array; } ;
struct bpf_insn_aux_data {int map_state; } ;
struct bpf_call_arg_meta {struct bpf_map* map_ptr; } ;


 int BPF_FUNC_map_delete_elem ;
 int BPF_FUNC_map_lookup_elem ;
 int BPF_FUNC_map_peek_elem ;
 int BPF_FUNC_map_pop_elem ;
 int BPF_FUNC_map_push_elem ;
 int BPF_FUNC_map_update_elem ;
 int BPF_FUNC_tail_call ;
 int BPF_F_RDONLY_PROG ;
 struct bpf_map* BPF_MAP_PTR (int ) ;
 struct bpf_map* BPF_MAP_PTR_POISON ;
 int EACCES ;
 int EINVAL ;
 int bpf_map_ptr_store (struct bpf_insn_aux_data*,struct bpf_map*,int ) ;
 int verbose (struct bpf_verifier_env*,char*) ;

__attribute__((used)) static int
record_func_map(struct bpf_verifier_env *env, struct bpf_call_arg_meta *meta,
  int func_id, int insn_idx)
{
 struct bpf_insn_aux_data *aux = &env->insn_aux_data[insn_idx];
 struct bpf_map *map = meta->map_ptr;

 if (func_id != BPF_FUNC_tail_call &&
     func_id != BPF_FUNC_map_lookup_elem &&
     func_id != BPF_FUNC_map_update_elem &&
     func_id != BPF_FUNC_map_delete_elem &&
     func_id != BPF_FUNC_map_push_elem &&
     func_id != BPF_FUNC_map_pop_elem &&
     func_id != BPF_FUNC_map_peek_elem)
  return 0;

 if (map == ((void*)0)) {
  verbose(env, "kernel subsystem misconfigured verifier\n");
  return -EINVAL;
 }





 if ((map->map_flags & BPF_F_RDONLY_PROG) &&
     (func_id == BPF_FUNC_map_delete_elem ||
      func_id == BPF_FUNC_map_update_elem ||
      func_id == BPF_FUNC_map_push_elem ||
      func_id == BPF_FUNC_map_pop_elem)) {
  verbose(env, "write into map forbidden\n");
  return -EACCES;
 }

 if (!BPF_MAP_PTR(aux->map_state))
  bpf_map_ptr_store(aux, meta->map_ptr,
      meta->map_ptr->unpriv_array);
 else if (BPF_MAP_PTR(aux->map_state) != meta->map_ptr)
  bpf_map_ptr_store(aux, BPF_MAP_PTR_POISON,
      meta->map_ptr->unpriv_array);
 return 0;
}
