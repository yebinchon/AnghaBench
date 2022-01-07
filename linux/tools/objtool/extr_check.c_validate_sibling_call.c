
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {int offset; int sec; } ;
struct insn_state {int dummy; } ;


 int WARN_FUNC (char*,int ,int ) ;
 scalar_t__ has_modified_stack_frame (struct insn_state*) ;
 int validate_call (struct instruction*,struct insn_state*) ;

__attribute__((used)) static int validate_sibling_call(struct instruction *insn, struct insn_state *state)
{
 if (has_modified_stack_frame(state)) {
  WARN_FUNC("sibling call from callable instruction with modified stack frame",
    insn->sec, insn->offset);
  return 1;
 }

 return validate_call(insn, state);
}
