
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct ip_set_ext {unsigned long timeout; } ;
struct ip_set {unsigned long timeout; } ;
struct bitmap_ipmac_adt_elem {scalar_t__ add_mac; } ;
struct bitmap_ipmac {int dummy; } ;


 int IPSET_ADD_START_STORED_TIMEOUT ;
 int ip_set_timeout_set (unsigned long*,unsigned long) ;

__attribute__((used)) static inline int
bitmap_ipmac_add_timeout(unsigned long *timeout,
    const struct bitmap_ipmac_adt_elem *e,
    const struct ip_set_ext *ext, struct ip_set *set,
    struct bitmap_ipmac *map, int mode)
{
 u32 t = ext->timeout;

 if (mode == IPSET_ADD_START_STORED_TIMEOUT) {
  if (t == set->timeout)

   t = *timeout;
  ip_set_timeout_set(timeout, t);
 } else {





  if (e->add_mac)
   ip_set_timeout_set(timeout, t);
  else
   *timeout = t;
 }
 return 0;
}
