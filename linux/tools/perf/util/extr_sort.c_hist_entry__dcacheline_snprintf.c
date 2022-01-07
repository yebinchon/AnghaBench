
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct symbol {int dummy; } ;
struct map {int prot; int flags; scalar_t__ ino_generation; scalar_t__ ino; scalar_t__ min; scalar_t__ maj; } ;
struct hist_entry {char level; scalar_t__ cpumode; TYPE_2__* mem_info; } ;
struct TYPE_3__ {struct symbol* sym; struct map* map; int al_addr; } ;
struct TYPE_4__ {TYPE_1__ daddr; } ;


 int MAP_SHARED ;
 scalar_t__ PERF_RECORD_MISC_KERNEL ;
 int PROT_EXEC ;
 int _hist_entry__sym_snprintf (struct map*,struct symbol*,int ,char,char*,size_t,unsigned int) ;
 int cl_address (int ) ;

__attribute__((used)) static int hist_entry__dcacheline_snprintf(struct hist_entry *he, char *bf,
       size_t size, unsigned int width)
{

 uint64_t addr = 0;
 struct map *map = ((void*)0);
 struct symbol *sym = ((void*)0);
 char level = he->level;

 if (he->mem_info) {
  addr = cl_address(he->mem_info->daddr.al_addr);
  map = he->mem_info->daddr.map;
  sym = he->mem_info->daddr.sym;


  if ((he->cpumode != PERF_RECORD_MISC_KERNEL) &&
       map && !(map->prot & PROT_EXEC) &&
      (map->flags & MAP_SHARED) &&
      (map->maj || map->min || map->ino ||
       map->ino_generation))
   level = 's';
  else if (!map)
   level = 'X';
 }
 return _hist_entry__sym_snprintf(map, sym, addr, level, bf, size,
      width);
}
