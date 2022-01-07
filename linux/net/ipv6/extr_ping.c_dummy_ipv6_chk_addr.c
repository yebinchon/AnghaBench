
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;



__attribute__((used)) static int dummy_ipv6_chk_addr(struct net *net, const struct in6_addr *addr,
          const struct net_device *dev, int strict)
{
 return 0;
}
