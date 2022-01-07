
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {scalar_t__ type; int call_dest; int alts; } ;


 scalar_t__ INSN_JUMP_CONDITIONAL ;
 scalar_t__ INSN_JUMP_DYNAMIC ;
 scalar_t__ INSN_JUMP_UNCONDITIONAL ;
 int list_empty (int *) ;

__attribute__((used)) static bool is_sibling_call(struct instruction *insn)
{

 if (insn->type == INSN_JUMP_DYNAMIC)
  return list_empty(&insn->alts);

 if (insn->type != INSN_JUMP_CONDITIONAL &&
     insn->type != INSN_JUMP_UNCONDITIONAL)
  return 0;


 return !!insn->call_dest;
}
