
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipv6hdr {int priority; int* flow_lbl; } ;


 int pr_debug (char*,int,int) ;

__attribute__((used)) static inline u8 lowpan_iphc_get_tc(const struct ipv6hdr *hdr)
{
 u8 dscp, ecn;




 dscp = (hdr->priority << 2) | ((hdr->flow_lbl[0] & 0xc0) >> 6);

 ecn = (hdr->flow_lbl[0] & 0x30);

 pr_debug("ecn 0x%02x dscp 0x%02x\n", ecn >> 4, dscp);

 return (ecn << 2) | dscp;
}
