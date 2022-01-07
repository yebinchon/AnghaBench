
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {int level; TYPE_1__* branch_info; } ;
struct addr_map_symbol {int addr; int sym; int map; } ;
struct TYPE_2__ {struct addr_map_symbol from; } ;


 int _hist_entry__sym_snprintf (int ,int ,int ,int ,char*,size_t,unsigned int) ;
 int repsep_snprintf (char*,size_t,char*,unsigned int,unsigned int,char*) ;

__attribute__((used)) static int hist_entry__sym_from_snprintf(struct hist_entry *he, char *bf,
      size_t size, unsigned int width)
{
 if (he->branch_info) {
  struct addr_map_symbol *from = &he->branch_info->from;

  return _hist_entry__sym_snprintf(from->map, from->sym, from->addr,
       he->level, bf, size, width);
 }

 return repsep_snprintf(bf, size, "%-*.*s", width, width, "N/A");
}
