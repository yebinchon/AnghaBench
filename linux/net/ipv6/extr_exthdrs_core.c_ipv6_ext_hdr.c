
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ NEXTHDR_AUTH ;
 scalar_t__ NEXTHDR_DEST ;
 scalar_t__ NEXTHDR_FRAGMENT ;
 scalar_t__ NEXTHDR_HOP ;
 scalar_t__ NEXTHDR_NONE ;
 scalar_t__ NEXTHDR_ROUTING ;

bool ipv6_ext_hdr(u8 nexthdr)
{



 return (nexthdr == NEXTHDR_HOP) ||
   (nexthdr == NEXTHDR_ROUTING) ||
   (nexthdr == NEXTHDR_FRAGMENT) ||
   (nexthdr == NEXTHDR_AUTH) ||
   (nexthdr == NEXTHDR_NONE) ||
   (nexthdr == NEXTHDR_DEST);
}
