
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_6__ {int ss_family; } ;
struct ceph_entity_addr {TYPE_3__ in_addr; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 scalar_t__ in4_pton (char const*,size_t,int *,char,char const**) ;
 scalar_t__ in6_pton (char const*,size_t,int *,char,char const**) ;
 int memset (TYPE_3__*,int ,int) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static int ceph_pton(const char *str, size_t len, struct ceph_entity_addr *addr,
  char delim, const char **ipend)
{
 memset(&addr->in_addr, 0, sizeof(addr->in_addr));

 if (in4_pton(str, len, (u8 *)&((struct sockaddr_in *)&addr->in_addr)->sin_addr.s_addr, delim, ipend)) {
  put_unaligned(AF_INET, &addr->in_addr.ss_family);
  return 0;
 }

 if (in6_pton(str, len, (u8 *)&((struct sockaddr_in6 *)&addr->in_addr)->sin6_addr.s6_addr, delim, ipend)) {
  put_unaligned(AF_INET6, &addr->in_addr.ss_family);
  return 0;
 }

 return -EINVAL;
}
