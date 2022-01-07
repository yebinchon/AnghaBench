
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_port_adt_elem {int id; } ;
struct bitmap_port {int members; } ;


 int test_and_clear_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_port_do_del(const struct bitmap_port_adt_elem *e,
     struct bitmap_port *map)
{
 return !test_and_clear_bit(e->id, map->members);
}
