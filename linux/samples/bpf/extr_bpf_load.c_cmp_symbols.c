
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ st_value; } ;
typedef TYPE_1__ GElf_Sym ;



__attribute__((used)) static int cmp_symbols(const void *l, const void *r)
{
 const GElf_Sym *lsym = (const GElf_Sym *)l;
 const GElf_Sym *rsym = (const GElf_Sym *)r;

 if (lsym->st_value < rsym->st_value)
  return -1;
 else if (lsym->st_value > rsym->st_value)
  return 1;
 else
  return 0;
}
