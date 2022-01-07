
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ceph_entity_addr {int dummy; } ;


 int EINVAL ;
 int bad ;
 int ceph_decode_8_safe (void**,void*,int,int ) ;
 int ceph_decode_entity_addr_legacy (void**,void*,struct ceph_entity_addr*) ;
 int ceph_decode_entity_addr_versioned (void**,void*,struct ceph_entity_addr*) ;

int
ceph_decode_entity_addr(void **p, void *end, struct ceph_entity_addr *addr)
{
 u8 marker;

 ceph_decode_8_safe(p, end, marker, bad);
 if (marker == 1)
  return ceph_decode_entity_addr_versioned(p, end, addr);
 else if (marker == 0)
  return ceph_decode_entity_addr_legacy(p, end, addr);
bad:
 return -EINVAL;
}
