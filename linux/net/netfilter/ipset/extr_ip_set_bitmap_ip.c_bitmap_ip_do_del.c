
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_ip_adt_elem {int id; } ;
struct bitmap_ip {int members; } ;


 int test_and_clear_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_ip_do_del(const struct bitmap_ip_adt_elem *e, struct bitmap_ip *map)
{
 return !test_and_clear_bit(e->id, map->members);
}
