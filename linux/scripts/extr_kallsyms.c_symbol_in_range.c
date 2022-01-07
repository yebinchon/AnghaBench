
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {scalar_t__ addr; } ;
struct addr_range {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static int symbol_in_range(struct sym_entry *s, struct addr_range *ranges,
      int entries)
{
 size_t i;
 struct addr_range *ar;

 for (i = 0; i < entries; ++i) {
  ar = &ranges[i];

  if (s->addr >= ar->start && s->addr <= ar->end)
   return 1;
 }

 return 0;
}
