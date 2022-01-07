
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;


 int AF_INET ;

__attribute__((used)) static int l3_length(int family)
{
 if (family == AF_INET)
  return sizeof(struct iphdr);
 else
  return sizeof(struct ipv6hdr);
}
