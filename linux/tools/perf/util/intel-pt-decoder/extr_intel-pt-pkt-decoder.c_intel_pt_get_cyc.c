
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_pkt {int payload; int type; } ;


 int INTEL_PT_BAD_PACKET ;
 int INTEL_PT_CYC ;
 int INTEL_PT_NEED_MORE_BYTES ;

__attribute__((used)) static int intel_pt_get_cyc(unsigned int byte, const unsigned char *buf,
       size_t len, struct intel_pt_pkt *packet)
{
 unsigned int offs = 1, shift;
 uint64_t payload = byte >> 3;

 byte >>= 2;
 len -= 1;
 for (shift = 5; byte & 1; shift += 7) {
  if (offs > 9)
   return INTEL_PT_BAD_PACKET;
  if (len < offs)
   return INTEL_PT_NEED_MORE_BYTES;
  byte = buf[offs++];
  payload |= ((uint64_t)byte >> 1) << shift;
 }

 packet->type = INTEL_PT_CYC;
 packet->payload = payload;
 return offs;
}
