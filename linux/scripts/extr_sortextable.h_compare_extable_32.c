
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Elf_Addr ;


 scalar_t__ _r (void const*) ;

__attribute__((used)) static int compare_extable(const void *a, const void *b)
{
 Elf_Addr av = _r(a);
 Elf_Addr bv = _r(b);

 if (av < bv)
  return -1;
 if (av > bv)
  return 1;
 return 0;
}
