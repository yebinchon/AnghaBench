
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct in_addr {int s_addr; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct ceph_entity_addr {struct sockaddr_storage in_addr; } ;




 int INADDR_ANY ;
 int htonl (int ) ;
 int ipv6_addr_any (struct in6_addr*) ;

__attribute__((used)) static bool addr_is_blank(struct ceph_entity_addr *addr)
{
 struct sockaddr_storage ss = addr->in_addr;
 struct in_addr *addr4 = &((struct sockaddr_in *)&ss)->sin_addr;
 struct in6_addr *addr6 = &((struct sockaddr_in6 *)&ss)->sin6_addr;

 switch (ss.ss_family) {
 case 129:
  return addr4->s_addr == htonl(INADDR_ANY);
 case 128:
  return ipv6_addr_any(addr6);
 default:
  return 1;
 }
}
