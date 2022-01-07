
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {unsigned char payload; unsigned char count; int type; } ;


 unsigned char const BIT (int ) ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int INTEL_PT_TMA ;

__attribute__((used)) static int intel_pt_get_tma(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 if (len < 7)
  return INTEL_PT_NEED_MORE_BYTES;

 packet->type = INTEL_PT_TMA;
 packet->payload = buf[2] | (buf[3] << 8);
 packet->count = buf[5] | ((buf[6] & BIT(0)) << 8);
 return 7;
}
