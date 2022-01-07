
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objtool_file {int insn_list; } ;
struct instruction {scalar_t__ sec; int list; } ;


 int list ;
 struct instruction* list_next_entry (struct instruction*,int ) ;

__attribute__((used)) static struct instruction *next_insn_same_sec(struct objtool_file *file,
           struct instruction *insn)
{
 struct instruction *next = list_next_entry(insn, list);

 if (!next || &next->list == &file->insn_list || next->sec != insn->sec)
  return ((void*)0);

 return next;
}
