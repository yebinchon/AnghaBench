
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {int* flow_lbl; } ;



__attribute__((used)) static inline bool lowpan_iphc_is_flow_lbl_zero(const struct ipv6hdr *hdr)
{
 return ((!(hdr->flow_lbl[0] & 0x0f)) &&
  !hdr->flow_lbl[1] && !hdr->flow_lbl[2]);
}
