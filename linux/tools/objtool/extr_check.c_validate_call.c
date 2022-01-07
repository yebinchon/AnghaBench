
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {int offset; int sec; int call_dest; } ;
struct insn_state {scalar_t__ df; scalar_t__ uaccess; } ;


 int WARN_FUNC (char*,int ,int ,int ) ;
 int call_dest_name (struct instruction*) ;
 int func_uaccess_safe (int ) ;

__attribute__((used)) static int validate_call(struct instruction *insn, struct insn_state *state)
{
 if (state->uaccess && !func_uaccess_safe(insn->call_dest)) {
  WARN_FUNC("call to %s() with UACCESS enabled",
    insn->sec, insn->offset, call_dest_name(insn));
  return 1;
 }

 if (state->df) {
  WARN_FUNC("call to %s() with DF set",
    insn->sec, insn->offset, call_dest_name(insn));
  return 1;
 }

 return 0;
}
