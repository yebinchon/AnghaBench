
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct map {int dso; } ;


 char* SRCLINE_UNKNOWN ;
 char* get_srcline (int ,int ,struct symbol*,int,int,int ) ;
 int map__rip_2objdump (struct map*,int ) ;

char *map__srcline(struct map *map, u64 addr, struct symbol *sym)
{
 if (map == ((void*)0))
  return SRCLINE_UNKNOWN;
 return get_srcline(map->dso, map__rip_2objdump(map, addr), sym, 1, 1, addr);
}
