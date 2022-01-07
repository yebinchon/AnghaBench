
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ins_operands {int dummy; } ;
struct ins {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* scnprintf ) (struct ins*,char*,size_t,struct ins_operands*,int) ;} ;


 int ins__raw_scnprintf (struct ins*,char*,size_t,struct ins_operands*,int) ;
 int stub1 (struct ins*,char*,size_t,struct ins_operands*,int) ;

int ins__scnprintf(struct ins *ins, char *bf, size_t size,
     struct ins_operands *ops, int max_ins_name)
{
 if (ins->ops->scnprintf)
  return ins->ops->scnprintf(ins, bf, size, ops, max_ins_name);

 return ins__raw_scnprintf(ins, bf, size, ops, max_ins_name);
}
