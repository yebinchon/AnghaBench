
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;


 int map__put (struct map*) ;

__attribute__((used)) static inline void __map__zput(struct map **map)
{
 map__put(*map);
 *map = ((void*)0);
}
