
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_ipmac_elem {scalar_t__ filled; int ether; } ;
struct bitmap_ipmac_adt_elem {int ether; scalar_t__ add_mac; int id; } ;
struct bitmap_ipmac {int extensions; int members; } ;


 int EAGAIN ;
 scalar_t__ MAC_FILLED ;
 int ether_addr_equal (int ,int ) ;
 struct bitmap_ipmac_elem* get_const_elem (int ,int ,size_t) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_ipmac_do_test(const struct bitmap_ipmac_adt_elem *e,
       const struct bitmap_ipmac *map, size_t dsize)
{
 const struct bitmap_ipmac_elem *elem;

 if (!test_bit(e->id, map->members))
  return 0;
 elem = get_const_elem(map->extensions, e->id, dsize);
 if (e->add_mac && elem->filled == MAC_FILLED)
  return ether_addr_equal(e->ether, elem->ether);

 return -EAGAIN;
}
