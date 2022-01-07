
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_port_adt_elem {int id; } ;
struct bitmap_port {int members; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_port_do_test(const struct bitmap_port_adt_elem *e,
      const struct bitmap_port *map, size_t dsize)
{
 return !!test_bit(e->id, map->members);
}
