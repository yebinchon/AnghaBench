
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bitmap_ipmac_elem {scalar_t__ filled; } ;
struct bitmap_ipmac {int extensions; int members; } ;


 scalar_t__ MAC_FILLED ;
 struct bitmap_ipmac_elem* get_const_elem (int ,int ,size_t) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_ipmac_gc_test(u16 id, const struct bitmap_ipmac *map, size_t dsize)
{
 const struct bitmap_ipmac_elem *elem;

 if (!test_bit(id, map->members))
  return 0;
 elem = get_const_elem(map->extensions, id, dsize);

 return elem->filled == MAC_FILLED;
}
