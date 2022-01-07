
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ map_subset (int,int) ;

__attribute__((used)) static int map_equal(int lru_map, int expected)
{
 return map_subset(lru_map, expected) && map_subset(expected, lru_map);
}
