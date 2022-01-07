
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_aux_data {int map_state; } ;


 int BPF_MAP_PTR_UNPRIV ;

__attribute__((used)) static bool bpf_map_ptr_unpriv(const struct bpf_insn_aux_data *aux)
{
 return aux->map_state & BPF_MAP_PTR_UNPRIV;
}
