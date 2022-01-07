
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipv6hdr {int priority; int* flow_lbl; } ;



__attribute__((used)) static inline void lowpan_iphc_tf_set_dscp(struct ipv6hdr *hdr, const u8 *tf)
{

 u8 dscp = tf[0] & 0x3f;


 hdr->priority |= ((dscp & 0x3c) >> 2);

 hdr->flow_lbl[0] |= ((dscp & 0x03) << 6);
}
