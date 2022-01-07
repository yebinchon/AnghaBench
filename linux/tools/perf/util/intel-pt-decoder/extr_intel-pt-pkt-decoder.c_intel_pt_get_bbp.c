
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {unsigned char count; unsigned char payload; int type; } ;


 int INTEL_PT_BBP ;
 int INTEL_PT_NEED_MORE_BYTES ;

__attribute__((used)) static int intel_pt_get_bbp(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 if (len < 3)
  return INTEL_PT_NEED_MORE_BYTES;
 packet->type = INTEL_PT_BBP;
 packet->count = buf[2] >> 7;
 packet->payload = buf[2] & 0x1f;
 return 3;
}
