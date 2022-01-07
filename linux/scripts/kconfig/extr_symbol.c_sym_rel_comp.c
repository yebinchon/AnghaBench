
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sym_match {scalar_t__ eo; scalar_t__ so; TYPE_1__* sym; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int sym_rel_comp(const void *sym1, const void *sym2)
{
 const struct sym_match *s1 = sym1;
 const struct sym_match *s2 = sym2;
 int exact1, exact2;
 exact1 = (s1->eo - s1->so) == strlen(s1->sym->name);
 exact2 = (s2->eo - s2->so) == strlen(s2->sym->name);
 if (exact1 && !exact2)
  return -1;
 if (!exact1 && exact2)
  return 1;


 return strcmp(s1->sym->name, s2->sym->name);
}
