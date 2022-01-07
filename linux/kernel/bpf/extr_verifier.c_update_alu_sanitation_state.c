
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bpf_insn_aux_data {scalar_t__ alu_state; scalar_t__ alu_limit; } ;


 int EACCES ;

__attribute__((used)) static int update_alu_sanitation_state(struct bpf_insn_aux_data *aux,
           u32 alu_state, u32 alu_limit)
{



 if (aux->alu_state &&
     (aux->alu_state != alu_state ||
      aux->alu_limit != alu_limit))
  return -EACCES;


 aux->alu_state = alu_state;
 aux->alu_limit = alu_limit;
 return 0;
}
