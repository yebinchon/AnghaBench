
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct symbol {int dummy; } ;
struct map {int dummy; } ;
struct hist_entry {int level; TYPE_1__* mem_info; } ;
struct TYPE_4__ {struct symbol* sym; struct map* map; int addr; } ;
struct TYPE_3__ {TYPE_2__ daddr; } ;


 int _hist_entry__sym_snprintf (struct map*,struct symbol*,int ,int ,char*,size_t,unsigned int) ;

__attribute__((used)) static int hist_entry__daddr_snprintf(struct hist_entry *he, char *bf,
        size_t size, unsigned int width)
{
 uint64_t addr = 0;
 struct map *map = ((void*)0);
 struct symbol *sym = ((void*)0);

 if (he->mem_info) {
  addr = he->mem_info->daddr.addr;
  map = he->mem_info->daddr.map;
  sym = he->mem_info->daddr.sym;
 }
 return _hist_entry__sym_snprintf(map, sym, addr, he->level, bf, size,
      width);
}
