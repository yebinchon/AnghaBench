
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_operands {int raw; } ;
struct ins {int name; } ;


 int scnprintf (char*,size_t,char*,int,int ,int ) ;

__attribute__((used)) static int ins__raw_scnprintf(struct ins *ins, char *bf, size_t size,
         struct ins_operands *ops, int max_ins_name)
{
 return scnprintf(bf, size, "%-*s %s", max_ins_name, ins->name, ops->raw);
}
