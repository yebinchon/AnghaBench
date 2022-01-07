
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_map_symbol {int sym; int al_addr; int map; } ;


 char* map__srcline (int ,int ,int ) ;

__attribute__((used)) static char *addr_map_symbol__srcline(struct addr_map_symbol *ams)
{
 return map__srcline(ams->map, ams->al_addr, ams->sym);
}
