
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bitmap_port {int members; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_port_gc_test(u16 id, const struct bitmap_port *map, size_t dsize)
{
 return !!test_bit(id, map->members);
}
