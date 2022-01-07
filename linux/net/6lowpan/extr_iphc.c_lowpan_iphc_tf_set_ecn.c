
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipv6hdr {int* flow_lbl; } ;



__attribute__((used)) static inline void lowpan_iphc_tf_set_ecn(struct ipv6hdr *hdr, const u8 *tf)
{

 u8 ecn = tf[0] & 0xc0;


 hdr->flow_lbl[0] |= (ecn >> 2);
}
