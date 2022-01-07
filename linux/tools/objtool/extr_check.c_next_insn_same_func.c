
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int offset; struct symbol* cfunc; int sec; } ;
struct objtool_file {int insn_list; } ;
struct instruction {struct symbol* func; int list; } ;


 struct instruction* find_insn (struct objtool_file*,int ,int ) ;
 int list ;
 struct instruction* list_next_entry (struct instruction*,int ) ;

__attribute__((used)) static struct instruction *next_insn_same_func(struct objtool_file *file,
            struct instruction *insn)
{
 struct instruction *next = list_next_entry(insn, list);
 struct symbol *func = insn->func;

 if (!func)
  return ((void*)0);

 if (&next->list != &file->insn_list && next->func == func)
  return next;


 if (func == func->cfunc)
  return ((void*)0);


 return find_insn(file, func->cfunc->sec, func->cfunc->offset);
}
