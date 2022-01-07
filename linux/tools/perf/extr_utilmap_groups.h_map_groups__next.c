
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;


 struct map* map__next (struct map*) ;

__attribute__((used)) static inline struct map *map_groups__next(struct map *map)
{
 return map__next(map);
}
