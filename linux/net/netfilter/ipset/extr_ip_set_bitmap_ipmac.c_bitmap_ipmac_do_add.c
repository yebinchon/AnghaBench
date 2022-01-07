
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bitmap_ipmac_elem {scalar_t__ filled; int ether; } ;
struct bitmap_ipmac_adt_elem {int ether; scalar_t__ add_mac; int id; } ;
struct bitmap_ipmac {int members; int extensions; } ;


 int IPSET_ADD_FAILED ;
 int IPSET_ADD_START_STORED_TIMEOUT ;
 int IPSET_ADD_STORE_PLAIN_TIMEOUT ;
 int IPSET_FLAG_EXIST ;
 scalar_t__ MAC_FILLED ;
 scalar_t__ MAC_UNSET ;
 int clear_bit (int ,int ) ;
 int ether_addr_copy (int ,int ) ;
 int ether_addr_equal (int ,int ) ;
 struct bitmap_ipmac_elem* get_elem (int ,int ,size_t) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static inline int
bitmap_ipmac_do_add(const struct bitmap_ipmac_adt_elem *e,
      struct bitmap_ipmac *map, u32 flags, size_t dsize)
{
 struct bitmap_ipmac_elem *elem;

 elem = get_elem(map->extensions, e->id, dsize);
 if (test_bit(e->id, map->members)) {
  if (elem->filled == MAC_FILLED) {
   if (e->add_mac &&
       (flags & IPSET_FLAG_EXIST) &&
       !ether_addr_equal(e->ether, elem->ether)) {

    clear_bit(e->id, map->members);
    smp_mb__after_atomic();
    ether_addr_copy(elem->ether, e->ether);
   }
   return IPSET_ADD_FAILED;
  } else if (!e->add_mac)

   return IPSET_ADD_FAILED;

  clear_bit(e->id, map->members);
  smp_mb__after_atomic();
  ether_addr_copy(elem->ether, e->ether);
  elem->filled = MAC_FILLED;
  return IPSET_ADD_START_STORED_TIMEOUT;
 } else if (e->add_mac) {

  ether_addr_copy(elem->ether, e->ether);
  elem->filled = MAC_FILLED;
  return 0;
 }
 elem->filled = MAC_UNSET;

 return IPSET_ADD_STORE_PLAIN_TIMEOUT;
}
