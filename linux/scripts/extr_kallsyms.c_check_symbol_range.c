
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_range {unsigned long long start; unsigned long long end; int end_sym; int start_sym; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int check_symbol_range(const char *sym, unsigned long long addr,
         struct addr_range *ranges, int entries)
{
 size_t i;
 struct addr_range *ar;

 for (i = 0; i < entries; ++i) {
  ar = &ranges[i];

  if (strcmp(sym, ar->start_sym) == 0) {
   ar->start = addr;
   return 0;
  } else if (strcmp(sym, ar->end_sym) == 0) {
   ar->end = addr;
   return 0;
  }
 }

 return 1;
}
