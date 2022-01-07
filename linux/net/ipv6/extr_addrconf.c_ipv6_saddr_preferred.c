
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPV6_ADDR_COMPATv4 ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_ADDR_MAPPED ;

__attribute__((used)) static inline int ipv6_saddr_preferred(int type)
{
 if (type & (IPV6_ADDR_MAPPED|IPV6_ADDR_COMPATv4|IPV6_ADDR_LOOPBACK))
  return 1;
 return 0;
}
