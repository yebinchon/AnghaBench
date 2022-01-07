
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int dummy; } ;


 scalar_t__ ex_to_insn (struct exception_table_entry const*) ;

__attribute__((used)) static int cmp_ex_sort(const void *a, const void *b)
{
 const struct exception_table_entry *x = a, *y = b;


 if (ex_to_insn(x) > ex_to_insn(y))
  return 1;
 if (ex_to_insn(x) < ex_to_insn(y))
  return -1;
 return 0;
}
