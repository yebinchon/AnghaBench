
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; int raw; } ;
struct TYPE_3__ {int name; int raw; } ;
struct ins_operands {TYPE_2__ target; TYPE_1__ source; } ;


 int zfree (int *) ;

__attribute__((used)) static void ins__delete(struct ins_operands *ops)
{
 if (ops == ((void*)0))
  return;
 zfree(&ops->source.raw);
 zfree(&ops->source.name);
 zfree(&ops->target.raw);
 zfree(&ops->target.name);
}
