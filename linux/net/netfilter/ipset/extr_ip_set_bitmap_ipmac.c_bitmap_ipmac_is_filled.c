
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_ipmac_elem {scalar_t__ filled; } ;


 scalar_t__ MAC_FILLED ;

__attribute__((used)) static inline int
bitmap_ipmac_is_filled(const struct bitmap_ipmac_elem *elem)
{
 return elem->filled == MAC_FILLED;
}
