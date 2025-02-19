
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct TYPE_2__ {int ss_family; } ;
struct ceph_entity_addr {TYPE_1__ in_addr; } ;




 int get_unaligned (int *) ;
 int htons (int) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static void addr_set_port(struct ceph_entity_addr *addr, int p)
{
 switch (get_unaligned(&addr->in_addr.ss_family)) {
 case 129:
  put_unaligned(htons(p), &((struct sockaddr_in *)&addr->in_addr)->sin_port);
  break;
 case 128:
  put_unaligned(htons(p), &((struct sockaddr_in6 *)&addr->in_addr)->sin6_port);
  break;
 }
}
