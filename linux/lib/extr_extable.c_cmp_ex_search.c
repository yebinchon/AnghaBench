
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int dummy; } ;


 unsigned long ex_to_insn (struct exception_table_entry const*) ;

__attribute__((used)) static int cmp_ex_search(const void *key, const void *elt)
{
 const struct exception_table_entry *_elt = elt;
 unsigned long _key = *(unsigned long *)key;


 if (_key > ex_to_insn(_elt))
  return 1;
 if (_key < ex_to_insn(_elt))
  return -1;
 return 0;
}
