
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_aux_data {int map_state; } ;


 scalar_t__ BPF_MAP_PTR (int ) ;
 scalar_t__ BPF_MAP_PTR_POISON ;

__attribute__((used)) static bool bpf_map_ptr_poisoned(const struct bpf_insn_aux_data *aux)
{
 return BPF_MAP_PTR(aux->map_state) == BPF_MAP_PTR_POISON;
}
