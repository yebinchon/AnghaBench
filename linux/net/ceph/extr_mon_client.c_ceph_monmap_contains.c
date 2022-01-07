
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_monmap {int num_mon; TYPE_1__* mon_inst; } ;
struct ceph_entity_addr {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ memcmp (struct ceph_entity_addr*,int *,int) ;

int ceph_monmap_contains(struct ceph_monmap *m, struct ceph_entity_addr *addr)
{
 int i;

 for (i = 0; i < m->num_mon; i++)
  if (memcmp(addr, &m->mon_inst[i].addr, sizeof(*addr)) == 0)
   return 1;
 return 0;
}
