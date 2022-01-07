
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_ops {int dummy; } ;
struct ins {struct ins_ops* ops; int name; } ;
struct arch {size_t nr_instructions; size_t nr_instructions_allocated; struct ins* instructions; } ;


 scalar_t__ arch__grow_instructions (struct arch*) ;
 int ins__sort (struct arch*) ;
 int strdup (char const*) ;

__attribute__((used)) static int arch__associate_ins_ops(struct arch* arch, const char *name, struct ins_ops *ops)
{
 struct ins *ins;

 if (arch->nr_instructions == arch->nr_instructions_allocated &&
     arch__grow_instructions(arch))
  return -1;

 ins = &arch->instructions[arch->nr_instructions];
 ins->name = strdup(name);
 if (!ins->name)
  return -1;

 ins->ops = ops;
 arch->nr_instructions++;

 ins__sort(arch);
 return 0;
}
