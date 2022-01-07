
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_sr_hdr {int segments_left; struct in6_addr* segments; } ;
struct in6_addr {int dummy; } ;



__attribute__((used)) static void advance_nextseg(struct ipv6_sr_hdr *srh, struct in6_addr *daddr)
{
 struct in6_addr *addr;

 srh->segments_left--;
 addr = srh->segments + srh->segments_left;
 *daddr = *addr;
}
