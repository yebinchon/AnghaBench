
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map_symbol {int dummy; } ;
struct TYPE_3__ {TYPE_2__* ops; int name; } ;
struct disasm_line {TYPE_1__ ins; int ops; } ;
struct arch {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* parse ) (struct arch*,int *,struct map_symbol*) ;} ;


 TYPE_2__* ins__find (struct arch*,int ) ;
 scalar_t__ stub1 (struct arch*,int *,struct map_symbol*) ;

__attribute__((used)) static void disasm_line__init_ins(struct disasm_line *dl, struct arch *arch, struct map_symbol *ms)
{
 dl->ins.ops = ins__find(arch, dl->ins.name);

 if (!dl->ins.ops)
  return;

 if (dl->ins.ops->parse && dl->ins.ops->parse(arch, &dl->ops, ms) < 0)
  dl->ins.ops = ((void*)0);
}
