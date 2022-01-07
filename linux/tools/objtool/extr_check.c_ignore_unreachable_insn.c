
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct instruction {scalar_t__ type; scalar_t__ offset; scalar_t__ len; TYPE_2__* func; struct instruction* jump_dest; TYPE_1__* sec; scalar_t__ ignore; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ INSN_JUMP_UNCONDITIONAL ;
 scalar_t__ INSN_NOP ;
 scalar_t__ is_kasan_insn (struct instruction*) ;
 scalar_t__ is_ubsan_insn (struct instruction*) ;
 int list ;
 struct instruction* list_next_entry (struct instruction*,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool ignore_unreachable_insn(struct instruction *insn)
{
 int i;

 if (insn->ignore || insn->type == INSN_NOP)
  return 1;
 if (!strcmp(insn->sec->name, ".fixup") ||
     !strcmp(insn->sec->name, ".altinstr_replacement") ||
     !strcmp(insn->sec->name, ".altinstr_aux"))
  return 1;







 if (!insn->func)
  return 0;
 for (i = 0; i < 5; i++) {

  if (is_kasan_insn(insn) || is_ubsan_insn(insn))
   return 1;

  if (insn->type == INSN_JUMP_UNCONDITIONAL) {
   if (insn->jump_dest &&
       insn->jump_dest->func == insn->func) {
    insn = insn->jump_dest;
    continue;
   }

   break;
  }

  if (insn->offset + insn->len >= insn->func->offset + insn->func->len)
   break;

  insn = list_next_entry(insn, list);
 }

 return 0;
}
