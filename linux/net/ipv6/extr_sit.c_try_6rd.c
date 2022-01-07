
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be32 ;


 int check_6rd (struct ip_tunnel*,struct in6_addr const*,int *) ;

__attribute__((used)) static inline __be32 try_6rd(struct ip_tunnel *tunnel,
        const struct in6_addr *v6dst)
{
 __be32 dst = 0;
 check_6rd(tunnel, v6dst, &dst);
 return dst;
}
