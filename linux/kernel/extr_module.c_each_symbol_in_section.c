
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsearch {int dummy; } ;
struct module {int dummy; } ;



__attribute__((used)) static bool each_symbol_in_section(const struct symsearch *arr,
       unsigned int arrsize,
       struct module *owner,
       bool (*fn)(const struct symsearch *syms,
           struct module *owner,
           void *data),
       void *data)
{
 unsigned int j;

 for (j = 0; j < arrsize; j++) {
  if (fn(&arr[j], owner, data))
   return 1;
 }

 return 0;
}
