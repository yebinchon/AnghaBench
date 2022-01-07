
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ops; } ;
struct TYPE_3__ {int ops; TYPE_2__ ins; } ;
struct ins_operands {TYPE_1__ locked; } ;
struct ins {int name; } ;


 int ins__raw_scnprintf (struct ins*,char*,size_t,struct ins_operands*,int) ;
 int ins__scnprintf (TYPE_2__*,char*,size_t,int ,int) ;
 int scnprintf (char*,size_t,char*,int,int ) ;

__attribute__((used)) static int lock__scnprintf(struct ins *ins, char *bf, size_t size,
      struct ins_operands *ops, int max_ins_name)
{
 int printed;

 if (ops->locked.ins.ops == ((void*)0))
  return ins__raw_scnprintf(ins, bf, size, ops, max_ins_name);

 printed = scnprintf(bf, size, "%-*s ", max_ins_name, ins->name);
 return printed + ins__scnprintf(&ops->locked.ins, bf + printed,
     size - printed, ops->locked.ops, max_ins_name);
}
