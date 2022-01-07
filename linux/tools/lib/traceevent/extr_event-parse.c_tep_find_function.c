
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;
struct func_map {char const* func; } ;


 struct func_map* find_func (struct tep_handle*,unsigned long long) ;

const char *tep_find_function(struct tep_handle *tep, unsigned long long addr)
{
 struct func_map *map;

 map = find_func(tep, addr);
 if (!map)
  return ((void*)0);

 return map->func;
}
