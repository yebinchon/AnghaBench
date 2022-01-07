
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pagelist {size_t room; int length; scalar_t__ mapped_tail; } ;


 int PAGE_MASK ;
 int ceph_pagelist_addpage (struct ceph_pagelist*) ;
 int memcpy (scalar_t__,void const*,size_t) ;

int ceph_pagelist_append(struct ceph_pagelist *pl, const void *buf, size_t len)
{
 while (pl->room < len) {
  size_t bit = pl->room;
  int ret;

  memcpy(pl->mapped_tail + (pl->length & ~PAGE_MASK),
         buf, bit);
  pl->length += bit;
  pl->room -= bit;
  buf += bit;
  len -= bit;
  ret = ceph_pagelist_addpage(pl);
  if (ret)
   return ret;
 }

 memcpy(pl->mapped_tail + (pl->length & ~PAGE_MASK), buf, len);
 pl->length += len;
 pl->room -= len;
 return 0;
}
