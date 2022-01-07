
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksym {long addr; } ;


 int sym_cnt ;
 struct ksym* syms ;

struct ksym *ksym_search(long key)
{
 int start = 0, end = sym_cnt;
 int result;


 if (sym_cnt <= 0)
  return ((void*)0);

 while (start < end) {
  size_t mid = start + (end - start) / 2;

  result = key - syms[mid].addr;
  if (result < 0)
   end = mid;
  else if (result > 0)
   start = mid + 1;
  else
   return &syms[mid];
 }

 if (start >= 1 && syms[start - 1].addr < key &&
     key < syms[start].addr)

  return &syms[start - 1];


 return &syms[0];
}
