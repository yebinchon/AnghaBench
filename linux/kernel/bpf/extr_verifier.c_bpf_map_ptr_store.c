
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;
struct bpf_insn_aux_data {unsigned long map_state; } ;


 scalar_t__ BPF_MAP_PTR_POISON ;
 unsigned long BPF_MAP_PTR_UNPRIV ;
 int BUILD_BUG_ON (unsigned long) ;
 int bpf_map_ptr_unpriv (struct bpf_insn_aux_data*) ;

__attribute__((used)) static void bpf_map_ptr_store(struct bpf_insn_aux_data *aux,
         const struct bpf_map *map, bool unpriv)
{
 BUILD_BUG_ON((unsigned long)BPF_MAP_PTR_POISON & BPF_MAP_PTR_UNPRIV);
 unpriv |= bpf_map_ptr_unpriv(aux);
 aux->map_state = (unsigned long)map |
    (unpriv ? BPF_MAP_PTR_UNPRIV : 0UL);
}
