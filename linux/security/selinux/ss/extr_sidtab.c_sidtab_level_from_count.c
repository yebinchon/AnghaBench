
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ SIDTAB_INNER_SHIFT ;
 scalar_t__ SIDTAB_LEAF_ENTRIES ;

__attribute__((used)) static u32 sidtab_level_from_count(u32 count)
{
 u32 capacity = SIDTAB_LEAF_ENTRIES;
 u32 level = 0;

 while (count > capacity) {
  capacity <<= SIDTAB_INNER_SHIFT;
  ++level;
 }
 return level;
}
