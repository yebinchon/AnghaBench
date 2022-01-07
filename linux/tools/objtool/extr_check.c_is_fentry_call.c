
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct instruction {scalar_t__ type; TYPE_1__* call_dest; } ;
struct TYPE_2__ {scalar_t__ type; int name; } ;


 scalar_t__ INSN_CALL ;
 scalar_t__ STT_NOTYPE ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool is_fentry_call(struct instruction *insn)
{
 if (insn->type == INSN_CALL &&
     insn->call_dest->type == STT_NOTYPE &&
     !strcmp(insn->call_dest->name, "__fentry__"))
  return 1;

 return 0;
}
