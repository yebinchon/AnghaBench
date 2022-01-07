
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {scalar_t__ end; unsigned long start; } ;
struct addr_location {scalar_t__ addr; TYPE_1__* map; } ;
struct TYPE_2__ {unsigned long start; } ;



__attribute__((used)) static unsigned long get_offset(struct symbol *sym, struct addr_location *al)
{
 unsigned long offset;

 if (al->addr < sym->end)
  offset = al->addr - sym->start;
 else
  offset = al->addr - al->map->start - sym->start;

 return offset;
}
