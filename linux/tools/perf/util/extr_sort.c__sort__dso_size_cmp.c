
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ map__size (struct map*) ;

__attribute__((used)) static int64_t _sort__dso_size_cmp(struct map *map_l, struct map *map_r)
{
 int64_t size_l = map_l != ((void*)0) ? map__size(map_l) : 0;
 int64_t size_r = map_r != ((void*)0) ? map__size(map_r) : 0;

 return size_l < size_r ? -1 :
  size_l == size_r ? 0 : 1;
}
