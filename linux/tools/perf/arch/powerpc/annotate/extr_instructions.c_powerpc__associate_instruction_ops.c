
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_ops {int dummy; } ;
struct arch {int dummy; } ;


 int arch__associate_ins_ops (struct arch*,char const*,struct ins_ops*) ;
 struct ins_ops call_ops ;
 struct ins_ops jump_ops ;
 struct ins_ops ret_ops ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static struct ins_ops *powerpc__associate_instruction_ops(struct arch *arch, const char *name)
{
 int i;
 struct ins_ops *ops;





 if (name[0] != 'b' ||
     !strncmp(name, "bcd", 3) ||
     !strncmp(name, "brinc", 5) ||
     !strncmp(name, "bper", 4))
  return ((void*)0);

 ops = &jump_ops;

 i = strlen(name) - 1;
 if (i < 0)
  return ((void*)0);


 if (name[i] == '+' || name[i] == '-')
  i--;

 if (name[i] == 'l' || (name[i] == 'a' && name[i-1] == 'l')) {






  if (strcmp(name, "bnl") && strcmp(name, "bnl+") &&
      strcmp(name, "bnl-") && strcmp(name, "bnla") &&
      strcmp(name, "bnla+") && strcmp(name, "bnla-"))
   ops = &call_ops;
 }
 if (name[i] == 'r' && name[i-1] == 'l')




  ops = &ret_ops;

 arch__associate_ins_ops(arch, name, ops);
 return ops;
}
