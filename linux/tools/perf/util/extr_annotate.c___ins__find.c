
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_ops {int dummy; } ;
struct ins {struct ins_ops* ops; } ;
struct arch {int nr_instructions; int sorted_instructions; int instructions; } ;


 struct ins* bsearch (char const*,int ,int const,int,int ) ;
 int ins__key_cmp ;
 int ins__sort (struct arch*) ;

__attribute__((used)) static struct ins_ops *__ins__find(struct arch *arch, const char *name)
{
 struct ins *ins;
 const int nmemb = arch->nr_instructions;

 if (!arch->sorted_instructions) {
  ins__sort(arch);
  arch->sorted_instructions = 1;
 }

 ins = bsearch(name, arch->instructions, nmemb, sizeof(struct ins), ins__key_cmp);
 return ins ? ins->ops : ((void*)0);
}
