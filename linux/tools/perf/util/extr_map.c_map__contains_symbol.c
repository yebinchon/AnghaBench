
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct symbol {int start; } ;
struct map {scalar_t__ (* unmap_ip ) (struct map*,int ) ;scalar_t__ start; scalar_t__ end; } ;


 scalar_t__ stub1 (struct map*,int ) ;

__attribute__((used)) static bool map__contains_symbol(struct map *map, struct symbol *sym)
{
 u64 ip = map->unmap_ip(map, sym->start);

 return ip >= map->start && ip < map->end;
}
