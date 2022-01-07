
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct map_symbol {int dummy; } ;
struct TYPE_7__ {TYPE_6__* ops; int name; } ;
struct TYPE_8__ {TYPE_3__* ops; TYPE_1__ ins; } ;
struct ins_operands {TYPE_2__ locked; int raw; } ;
struct arch {int dummy; } ;
struct TYPE_10__ {scalar_t__ (* parse ) (struct arch*,TYPE_3__*,struct map_symbol*) ;} ;
struct TYPE_9__ {int raw; } ;


 scalar_t__ disasm_line__parse (int ,int *,int *) ;
 TYPE_6__* ins__find (struct arch*,int ) ;
 scalar_t__ stub1 (struct arch*,TYPE_3__*,struct map_symbol*) ;
 TYPE_3__* zalloc (int) ;
 int zfree (TYPE_3__**) ;

__attribute__((used)) static int lock__parse(struct arch *arch, struct ins_operands *ops, struct map_symbol *ms)
{
 ops->locked.ops = zalloc(sizeof(*ops->locked.ops));
 if (ops->locked.ops == ((void*)0))
  return 0;

 if (disasm_line__parse(ops->raw, &ops->locked.ins.name, &ops->locked.ops->raw) < 0)
  goto out_free_ops;

 ops->locked.ins.ops = ins__find(arch, ops->locked.ins.name);

 if (ops->locked.ins.ops == ((void*)0))
  goto out_free_ops;

 if (ops->locked.ins.ops->parse &&
     ops->locked.ins.ops->parse(arch, ops->locked.ops, ms) < 0)
  goto out_free_ops;

 return 0;

out_free_ops:
 zfree(&ops->locked.ops);
 return 0;
}
