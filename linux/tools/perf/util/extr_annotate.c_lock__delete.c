
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int raw; } ;
struct ins {TYPE_3__* ops; } ;
struct TYPE_5__ {int ops; struct ins ins; } ;
struct ins_operands {TYPE_1__ target; TYPE_2__ locked; } ;
struct TYPE_6__ {int (* free ) (int ) ;} ;


 int ins__delete (int ) ;
 int stub1 (int ) ;
 int zfree (int *) ;

__attribute__((used)) static void lock__delete(struct ins_operands *ops)
{
 struct ins *ins = &ops->locked.ins;

 if (ins->ops && ins->ops->free)
  ins->ops->free(ops->locked.ops);
 else
  ins__delete(ops->locked.ops);

 zfree(&ops->locked.ops);
 zfree(&ops->target.raw);
 zfree(&ops->target.name);
}
