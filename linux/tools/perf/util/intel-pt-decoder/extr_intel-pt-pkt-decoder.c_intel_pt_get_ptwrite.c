
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct intel_pt_pkt {unsigned char count; int payload; int type; } ;


 unsigned char const BIT (int) ;
 int INTEL_PT_BAD_PACKET ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int INTEL_PT_PTWRITE ;
 int INTEL_PT_PTWRITE_IP ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int intel_pt_get_ptwrite(const unsigned char *buf, size_t len,
    struct intel_pt_pkt *packet)
{
 packet->count = (buf[1] >> 5) & 0x3;
 packet->type = buf[1] & BIT(7) ? INTEL_PT_PTWRITE_IP :
      INTEL_PT_PTWRITE;

 switch (packet->count) {
 case 0:
  if (len < 6)
   return INTEL_PT_NEED_MORE_BYTES;
  packet->payload = le32_to_cpu(*(uint32_t *)(buf + 2));
  return 6;
 case 1:
  if (len < 10)
   return INTEL_PT_NEED_MORE_BYTES;
  packet->payload = le64_to_cpu(*(uint64_t *)(buf + 2));
  return 10;
 default:
  return INTEL_PT_BAD_PACKET;
 }
}
