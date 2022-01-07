
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_entity_addr {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int ceph_dns_resolve_name(const char *name, size_t namelen,
  struct ceph_entity_addr *addr, char delim, const char **ipend)
{
 return -EINVAL;
}
