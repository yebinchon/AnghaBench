
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be32 ;



__attribute__((used)) static bool ipv4_rcv_saddr_equal(__be32 sk1_rcv_saddr, __be32 sk2_rcv_saddr,
     bool sk2_ipv6only, bool match_wildcard)
{
 if (!sk2_ipv6only) {
  if (sk1_rcv_saddr == sk2_rcv_saddr)
   return 1;
  if (!sk1_rcv_saddr || !sk2_rcv_saddr)
   return match_wildcard;
 }
 return 0;
}
