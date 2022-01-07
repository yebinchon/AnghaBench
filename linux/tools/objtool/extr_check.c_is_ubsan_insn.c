
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct instruction {scalar_t__ type; TYPE_1__* call_dest; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ INSN_CALL ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool is_ubsan_insn(struct instruction *insn)
{
 return (insn->type == INSN_CALL &&
  !strcmp(insn->call_dest->name,
   "__ubsan_handle_builtin_unreachable"));
}
