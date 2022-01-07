
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in6_addr {int dummy; } ;
typedef int scope_id ;
typedef int port ;
typedef struct in6_addr const __u32 ;
typedef struct in6_addr const __be16 ;


 int memcpy (int *,struct in6_addr const*,int) ;

__attribute__((used)) static inline void __rds_create_bind_key(u8 *key, const struct in6_addr *addr,
      __be16 port, __u32 scope_id)
{
 memcpy(key, addr, sizeof(*addr));
 key += sizeof(*addr);
 memcpy(key, &port, sizeof(port));
 key += sizeof(port);
 memcpy(key, &scope_id, sizeof(scope_id));
}
