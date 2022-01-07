
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct intel_pt_pkt {int payload; int type; } ;


 int INTEL_PT_CBR ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int intel_pt_get_cbr(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 if (len < 4)
  return INTEL_PT_NEED_MORE_BYTES;
 packet->type = INTEL_PT_CBR;
 packet->payload = le16_to_cpu(*(uint16_t *)(buf + 2));
 return 4;
}
