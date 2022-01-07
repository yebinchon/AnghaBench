
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct map_groups {int maps; } ;
struct map {int dummy; } ;


 struct map* maps__find (int *,int ) ;

__attribute__((used)) static inline struct map *map_groups__find(struct map_groups *mg, u64 addr)
{
 return maps__find(&mg->maps, addr);
}
