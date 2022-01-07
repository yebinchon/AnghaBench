
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct special_alt {int dummy; } ;
struct objtool_file {int dummy; } ;
struct instruction {scalar_t__ type; int offset; int sec; } ;


 scalar_t__ INSN_JUMP_UNCONDITIONAL ;
 scalar_t__ INSN_NOP ;
 int WARN_FUNC (char*,int ,int ) ;
 int list ;
 struct instruction* list_next_entry (struct instruction*,int ) ;

__attribute__((used)) static int handle_jump_alt(struct objtool_file *file,
      struct special_alt *special_alt,
      struct instruction *orig_insn,
      struct instruction **new_insn)
{
 if (orig_insn->type == INSN_NOP)
  return 0;

 if (orig_insn->type != INSN_JUMP_UNCONDITIONAL) {
  WARN_FUNC("unsupported instruction at jump label",
     orig_insn->sec, orig_insn->offset);
  return -1;
 }

 *new_insn = list_next_entry(orig_insn, list);
 return 0;
}
